module FormHelper
  
  def submit_button (form_builder)
    form_builder.submit :class => 'btn btn-primary'
  end
  
  def cancel_button (form_builder)
    form_builder.submit "Cancel", :name => "cancel", :class => 'btn btn-danger'
  end
  
  def audit_button (form_builder)
    form_builder.submit "Audit", :name => "audit", :class => 'btn btn-warning' if team_leader? and controller.action_name != 'new'
  end
  
  def cancel_button_processing(path = nil)
    if params[:cancel]
      return_to_path = path ? path : session[:return_to]
      redirect_to return_to_path
      return
    end
  end

  def audit_button_processing
    if params[:audit]
      redirect_to :controller => controller_name, :action => 'edit', :audit_record => true
      return
    end
  end

  
end