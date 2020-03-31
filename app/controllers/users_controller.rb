class UsersController < ApplicationController
  before_action :require_same_user, only: [:edit, :update, :destroy]
  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the chat app"
      session[:user_id] = @user.id


    else
      render 'login'
    end

  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

  def require_same_user
    if current_user != @user && !current_user.admin?

      flash[:danger] = "Trying to edit someone else's profile, seriously? Get out of here."
      redirect_to root_path
    end
  end



end