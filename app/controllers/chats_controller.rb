class ChatsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    chat = Chat.new
    chat.user1_id = @current_user.id
    chat.user2_id = params[:user_id]
    chat.save
    Message.create(:chat_id => chat.id, :username => @current_user.firstname, :messages => "has started a conversation.")
    redirect_to chat_path(chat)
  end

  def create
    chat = Chat.find params[:id]
    Message.create(:chat_id => params[:id], :username => @current_user.firstname, :messages => params[:messages])
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
    @suggestions = ['Suggested Restaurants', 'Suggested Cafes', 'Suggested Bars']
    @restaurants = {}

    ['food&keyword=' + @current_user.cuisines, 'cafe', 'bar'].map do |type|
      url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=3000&types=" + type + "&key=AIzaSyB_OraWh6OvDrPAE_uOoEOEcZStLq-lX_8"
      response = HTTParty.get(url)
      [0, 1, 2].map { |x| y = rand(x * 3..x * 3 + 2); @restaurants[response['results'][y]['name']] = response['results'][y]['vicinity'] }
    end
  end

end