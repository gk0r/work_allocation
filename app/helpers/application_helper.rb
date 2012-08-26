module ApplicationHelper
  def index_link(link_text, link_url)
    link_to link_text, link_url if link_text
  end
  
  def delete_link (path)
    link_to '<i class="icon-white icon-trash"></i>'.html_safe, path, :class => 'btn btn-mini btn-danger'
  end
end
