class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by_email(params[:usr_email]) 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to store_path
    else
      user = User.find_by_name(params[:usr_email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to store_path
      else
        redirect_to '/login', notice: '"Incorrect email or password"'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end    
end