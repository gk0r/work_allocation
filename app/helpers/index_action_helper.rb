module IndexActionHelper
  
  def index_link(link_text = nil, object_id = nil)
    if link_text && object_id
      if link_text.to_s.length > 50
        # Setup the link to have the tooltip
        link_to link_text.to_s.truncate(50, :separator => ' '), {:controller => controller.controller_name, :action => 'edit', :id => object_id}, {:title => link_text, :class => 'tip'}
      else
        # Normal link that does not require a tooltip
        link_to link_text.to_s.truncate(50, :separator => ' '), {:controller => controller.controller_name, :action => 'edit', :id => object_id}
      end
    end
  end
  
  def tooltip_link(link_text, link, link_tooltip)
    link_to link_text, link, {:title => link_tooltip, :class => 'tip'}
  end

  def index_format_date(date = nil)
    date.try {|b| b.strftime("%d %b")}
  end
  
  def delete_link (path, text = nil)
    text = text ? text : 'Are you sure?'
    link_to "<i class='icon-white icon-trash'></i> ".html_safe, path, :confirm => text, :method => :delete, :class => 'btn btn-mini btn-danger' if can? :destroy, path
  end
  
  def tick_box(draw_tick_box = false)
    '<i class="icon-ok"> </i>'.html_safe if draw_tick_box
  end

  # This helper draws the 'New XXXX' button where 'XXXX' is the name of the model. 
  # The helper method has two optional parameters. If left blank, it will retrieve the current controller name and turn it into a proper model name.
  # If the path is not specified, it will default to the :new action of the same controller within which this action is called.
  def new_button  ( button_label  = 'New ' + controller.controller_name.classify.constantize.model_name.human, 
                    button_path   = {:controller => controller.controller_name, :action => :new}  )
    
    link_to button_label, button_path, :class => 'btn btn-primary' if can? :create, controller.controller_name.classify.constantize.model_name.human
  end
  
end