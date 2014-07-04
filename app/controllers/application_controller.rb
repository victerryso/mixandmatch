class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user

  private
  def authenticate_user
    if session[:user_id].present?
      @current_user = User.where(:id => session[:user_id]).first
    end

    if @current_user.nil?
      session[:user_id] = nil
    end
  end
end
