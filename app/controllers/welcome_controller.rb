class WelcomeController < ApplicationController
  # skip_before_filter :authorise
  
  def home
    respond_to do |format|
      format.html
    end
  end
  
end # End Class