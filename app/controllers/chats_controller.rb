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
    @user1 = (User.where :id => @chat.user1_id).first
    @user2 = (User.where :id => @chat.user2_id).first
    @messages = Message.where(:chat_id => @chat.id)

  end

end