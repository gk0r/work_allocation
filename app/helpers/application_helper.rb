module ApplicationHelper
  
  def index_link(link_text, link_url)
    link_to link_text.to_s.truncate(50, :separator => ' '), link_url if link_text && link_url
  end
  
  def delete_link (path)
    link_to '<i class="icon-trash"></i> '.html_safe, path, :confirm => 'Are you sure?', :method => :delete, :class => 'btn btn-mini btn-danger'
  end
  
  def cancel_link(path)
    return_to_path = session[:return_to] ? session[:return_to] : path
    link_to 'Cancel', return_to_path, :class => 'btn btn-danger'
  end
  
  def close_icon
    '<a class="close" data-dismiss="alert">x</a>'.html_safe
  end
  
end
