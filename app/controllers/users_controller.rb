class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(current_user)
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to products_path
    else
      redirect_to '/'
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :date_of_birth, :gender)
  end
end
