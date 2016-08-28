class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    #not needed with an "@" because we don't need in a new view...
    if user.save
      session[:user_id] =  user.id
      redirect_to welcome_path(user) #another reason we don't need "@"
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
