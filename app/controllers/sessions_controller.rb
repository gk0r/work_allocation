class SessionsController < ApplicationController

  skip_load_and_authorize_resource
  
  def new
    respond_to do |format|
      format.html { render 'sign_in' }
    end
  end
  
  def create
    user = User.find_by_username(params[:session][:username])
  
    if (user)
      session[:user_id] = user.id
      redirect_to root_url
    else
      redirect_to sign_in_path, :flash => {:error => "Unable to find a user with this username: " + params[:session][:username].to_s}
    end
  end
  
  def destroy
    session[:user_id] = @current_user = nil
    redirect_to root_url
  end
  
end
