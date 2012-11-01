class ApplicationController < ActionController::Base
  protect_from_forgery
  
  load_and_authorize_resource
  
  include ApplicationHelper
  
  helper_method :current_user,
                :user_signed_in?,
                :paginate_at
  
  before_filter :cancel_button_processing
  before_filter :audit_button_processing
  before_filter :refuse_ie6
  
  after_filter :return_logic, :only => :index
          
  # This is my 'Test' method. Can be accessed via a GET request to /test URL.
  def test 
  end
  
  protected
  
  def current_user
    # Do not change find_by_id again. This stops the annoying ActiveRecord:NotFound exceptions when deploying development and prod envs on the same box
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
  
  def user_signed_in?
    return true if current_user
  end
  
  def paginate_at
    15
  end
  
  def return_logic
    session[:return_to] = '/' + controller_name
  end
  
  def refuse_ie6
    render :action => '../layouts/ie6', :layout => "ie6" if browser.ie6?
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      redirect_to return_logic, :flash => {:error => exception.message}
    else
      redirect_to sign_in_path, :flash => {:error => t('flash.please_sign_in') }
    end
  end
  
  # RAILS ADMIN CONFIGURATION
  # 
  # Activate this when I need it
  # 
  # def reload_rails_admin
  #   models = ActiveRecord::Base.models
  #   models.each do |m|
  #     RailsAdmin::Config.reset_model(m)
  #   end
  #   RailsAdmin::Config::Actions.reset
  # 
  #   load("#{Rails.root}/config/initializers/rails_admin.rb")
  # end
  # 
  # def rails_admin_path?
  #   controller_path =~ /rails_admin/ && Rails.env == "development"
  # end
  
end
