class ChatsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    chat = Chat.new
    chat.user1_id = @current_user.id
    chat.user2_id = params[:user_id]
    chat.save
    Message.create(:chat_id => chat.id, :user_id => @current_user.id, :message => "has started a conversation.")
    redirect_to chat_path(chat)
  end

  def create
    chat = Chat.find params[:id]
    Message.create(:chat_id => params[:id], :user_id => @current_user.id, :message => params[:message])
    redirect_to chat_path(chat)
  end

  def show
    @chat = Chat.find params[:id]
    @user1 = (User.find_by :id => @chat.user1_id)
    @user2 = (User.find_by :id => @chat.user2_id)
    @messages = Message.where(:chat_id => @chat.id)
  end

  def match
    @chat = Chat.find params[:id]
    @user1 = (User.find_by :id => @chat.user1_id)
    @user2 = (User.find_by :id => @chat.user2_id)
    places
  end

  private

  def places
    @suggestions = ['Suggested Restaurants', 'Suggested Cafes', 'Suggested Bars'] # Types of suggestions
    @restaurants = {} # Make an empty arraay
      ['food&keyword=' + @current_user.cuisines, 'cafe', 'bar'].map do |type| # For each type of suggestion, we put it through the Google Place API
        url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=3000&types=" + type + "&key=AIzaSyDzMn29qnBUFN4FUuepeyzhSbQo1J9lkvo"
        response = HTTParty.get(url) # The Data received
        if response['results'].present? # Just in case the API stops working again
          [0, 1, 2].map do |x|
            y = rand(x * 3..x * 3 + 2) # Acquiring a random place so we don't receive the same result
            @restaurants[response['results'][y]['name']] = response['results'][y]['vicinity'] # Recording the restaurant and address into a hash
          end
        else
          @restaurants = [] # Just in case the API stops working
          @error = response['error_message']
        end
    end
  end

end