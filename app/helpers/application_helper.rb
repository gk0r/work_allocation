module ApplicationHelper
  
  include IndexActionHelper
  include FormHelper
  
  def xls_format_date(date = nil)
    date.try {|b| b.strftime("%d %b %Y")}
  end  
  
  def close_icon
    '<a class="close" data-dismiss="alert">x</a>'.html_safe
  end

  #  
  # I don't think I need this..
  #   
  # def to_csv(record, options = {})
  #   CSV.generate(options) do |csv|
  #     csv << column_names
  #     all.each do |model|
  #       csv << record.attributes.values_at(*column_names)
  #     end
  #   end
  # end
  
  
end
