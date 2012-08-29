class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user,
                :user_signed_in?,
                :paginate_at
                
  # before_filter :user_signed_in
  
  # This is my 'Test' method. Can be accessed via a GET request to /test URL.
  def test 
  end
  
  protected
  
  def current_user
    @current_user ||= User.find(session[:user]) if session[:user]
  end
  
  def user_signed_in?
    return true if current_user
  end
  
  def paginate_at
    15
  end
  
end
