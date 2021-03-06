class WelcomeController < ApplicationController

  skip_load_and_authorize_resource
  
  def index
    if current_user
      @ba_specs   = BaSpec.find_all_by_user_id(current_user.id)
      @tech_specs = TechSpec.find_all_by_user_id(current_user)
      @code = Code.find_all_by_user_id(current_user)
    end
    
    respond_to do |format|
      format.html # index.html
    end
  end
  
end # End Class
