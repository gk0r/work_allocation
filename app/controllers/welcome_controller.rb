class WelcomeController < ApplicationController
  # skip_before_filter :authorise
  
  def home
    if current_user
      @ba_specs   = BaSpec.find_all_by_user_id(current_user.id)
      @tech_specs = TechSpec.find_all_by_user_id(current_user)
      @code = Code.find_all_by_user_id(current_user)
    end
    
    respond_to do |format|
      format.html
    end
  end
  
end # End Class
