module FormHelper
  
  def submit_button (form_builder)
    form_builder.submit :class => 'btn btn-primary'
  end
  
  def cancel_button (form_builder)
    form_builder.submit "Cancel", :name => "cancel", :class => 'btn btn-danger'
  end
  
  def cancel_button_processing(path = nil)
    if params[:cancel]
      return_to_path = path ? path : session[:return_to]
      redirect_to return_to_path
      return
    end
  end
  
end