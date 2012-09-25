class ApplicationController < ActionController::Base
  protect_from_forgery
  
  load_and_authorize_resource
  
  include ApplicationHelper
  
  helper_method :current_user,
                :user_signed_in?,
                :paginate_at
  
  before_filter :return_logic, :only => [:index, :new, :edit]              
  before_filter :cancel_button_processing
  before_filter :refuse_ie6
          
  # before_filter :user_signed_in
  
  # This is my 'Test' method. Can be accessed via a GET request to /test URL.
  def test 
  end
  
  protected
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def user_signed_in?
    return true if current_user
  end
  
  def paginate_at
    15
  end
  
  def return_logic
    session[:return_to] = request.referer
  end
  
  def refuse_ie6
    render :action => '../layouts/ie6', :layout => "ie6" if browser.ie6?
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
