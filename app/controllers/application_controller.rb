class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :user_signed_in?, :authenticate

  def authenticate
  	if !user_signed_in?
  		redirect_to new_session_path
  	end
  	
  end

  def current_user
  	if session[:user_id]
  		 User.find(session[:user_id])
  	end
  end

  def user_signed_in?
  	!session[:user_id].nil?
  end
end