module ApplicationHelper
  
  include IndexActionHelper
  include FormHelper
  
  def xls_format_date(date = nil)
    date.try {|b| b.strftime("%d %b %Y")}
  end  
  
  def close_icon
    '<a class="close" data-dismiss="alert">x</a>'.html_safe
  end

end
