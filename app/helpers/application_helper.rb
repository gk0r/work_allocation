module ApplicationHelper
  def index_link(link_text, link_url)
    link_to link_text, link_url if link_text
  end
end
