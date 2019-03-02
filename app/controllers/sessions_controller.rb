class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find(params[:user][:id].to_i)
    if user
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:error] = "Something went wrong!"
      redirect_to root_url
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_url
  end
end
