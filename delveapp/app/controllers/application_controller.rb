class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :current_user
  # before_action :require_logged_in, except: [:new, :create, :home]
  helper_method :current_user, :logged_in?, :authorize

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def authorize
    redirect_to welcome_path, notice: 'Please Log In' unless logged_in?

  end

end
