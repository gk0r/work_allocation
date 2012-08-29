class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user,
                :user_signed_in,
                :paginate_at
                
  # before_filter :user_signed_in
  
  # This is my 'Test' method. Can be accessed via a GET request to /test URL.
  def test 
  end
  
  protected
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def user_signed_in
    unless current_user
      redirect_to sign_in_path, notice: 'Please sign in'
    end
  end
  
  def paginate_at
    15
  end
  
end
