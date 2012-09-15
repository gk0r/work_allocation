module IndexActionHelper
  
  def index_link(link_text = nil, link_url = nil)
    link_to link_text.to_s.truncate(50, :separator => ' '), link_url if link_text && link_url
  end
  
  def index_format_date(date = nil)
    date.try {|b| b.strftime("%d %b")}
  end
  
  def delete_link (path)
    link_to "<i class='icon-white icon-trash'></i> ".html_safe, path, :confirm => 'Are you sure?', :method => :delete, :class => 'btn btn-mini btn-danger'
  end
  
  def tick_box(draw_tick_box = false)
    '<i class="icon-ok"> </i>'.html_safe if draw_tick_box
  end

  # This helper draws the 'New XXXX' button where 'XXXX' is the name of the model. 
  # The helper method has two optional parameters. If left blank, it will retrieve the current controller name and turn it into a proper model name.
  # If the path is not specified, it will default to the :new action of the same controller within which this action is called.
  def new_button  ( button_label  = 'New ' + controller.controller_name.classify.constantize.model_name.human, 
                    button_path   = {:controller => controller.controller_name, :action => :new}  )
    
    link_to button_label, button_path, :class => 'btn btn-primary'
  end
  
end