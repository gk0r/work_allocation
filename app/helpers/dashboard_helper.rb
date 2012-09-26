module DashboardHelper
  
  def dashboard_link(link_text = nil, link_url = nil)
    if link_text && link_url
      if link_text.to_s.length > 50
        # Setup the link to have the tooltip
        link_to link_text.to_s.truncate(50, :separator => ' '), link_url, {:title => link_text, :class => 'tip'}
      else
        # Normal link that does not require a tooltip
        link_to link_text.to_s.truncate(50, :separator => ' '), link_url
      end
    end
  end

end