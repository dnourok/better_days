class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :create_session

  def create_session
  	# check if the user logged in
  	# if not, create a user and log them in
  	# if so, do nothing.
  	unless session[:user_id]
	  	@current_user = User.create!
	  	session[:user_id] = @current_user.id
	  end
  end

  # Because of create_session, session[:user_id] should never be nil
  def current_user
  	@current_user || User.find(session[:user_id])
  end

end
