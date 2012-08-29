class SessionsController < ApplicationController
  # skip_before_filter :authorise
  
  def new
    respond_to do |format|
      format.html { render 'sign_in' }
    end
  end
  
  def create
    user = User.find_by_email(params[:session][:email])
    
    if (user)
      session[:user] = @current_user = current_user = user
      redirect_to root_url
    else
      redirect_to sign_in_path, alert: 'Unable to find a user with this email'
    end
  end

  def destroy
    session[:user_id] = @current_user = session[:user] = nil
    redirect_to root_url
  end
  
end
