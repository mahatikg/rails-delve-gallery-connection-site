class SessionsController < ApplicationController


  def welcome
  end

  def new
  end

  def create
    # binding.pry
    @user = User.find_by_name(params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to welcome_path(@user)
    else
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    #reset_session #works even better for more complex sessions
    redirect_to root_url_path
  end


end
