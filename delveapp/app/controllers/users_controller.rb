class UsersController < ApplicationController
  before_action :authorize, only: [:show]

  def home
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(safe_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end

  end

  # def show
  #   @user = User.find(params[:id])
  # end

  def signin
    @user = User.new

  end

private

  def safe_params
    params.require(:user).permit(:name, :password, :height, :happiness, :nausea, :tickets, :admin)
  end

end
