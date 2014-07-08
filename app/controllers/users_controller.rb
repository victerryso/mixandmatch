class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :check_if_logged_in, :except => [:new, :create]

  def index
    @users1 = Chat.where(:user1_id => @current_user.id)
    @users2 = Chat.where(:user2_id => @current_user.id)
    @users_all = User.all[0..15]
    fortune
  end

  def create
    @user = User.new user_params
    @user.astro_id = zodiac
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @user = User.find params[:id]
    @chat = Chat.find_by(:user1_id => [@current_user.id, @user.id],
                         :user2_id => [@current_user.id, @user.id])
  end

  def update
    @user = User.find params[:id]
    @user.astro_id = zodiac
    @user.update user_params
    redirect_to root_path
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to root_path
  end

  def matches
    @users = compatibility
    @users_all = User.all[0..15]
  end

  def all
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname, :gender, :preference, :birthday, :age, :suburb, :cuisines, :hobbies, :about, :image, :astro_id, :lunar_id)
  end

  def check_if_logged_in
    redirect_to(login_path) if @current_user.nil?
  end

  def compatibility
    preference = @current_user.preference
    x = @current_user.astro_id
    y = x + 4; y -= 12 if y > 12
    z = x + 8; z -= 12 if z > 12
    User.where(:astro_id => [y, z], :gender => preference)
  end

  def zodiac
    Astro.find_by(:sign => @user.zodiac_sign).id if @user.birthday.present?
  end

  def fortune
    url = "http://pipes.yahoo.com/pipes/pipe.run?_id=56d38d9e17c3f5969e443e2dc13e5b61&_render=json&sign=#{@current_user.zodiac_sign}&url=http%3A%2F%2Ffeeds.astrology.com%2Fdailyoverview"
    response = HTTParty.get(url)
    @current_user.astro.dailyfeed = response['value']['items'].first['description'].split(/<|>/)[2]
  end

end