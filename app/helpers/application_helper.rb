module ApplicationHelper
  
  include IndexActionHelper
  include FormHelper
  include DashboardHelper
  
  def xls_format_date(date = nil)
    date.try {|b| b.strftime("%d %b %Y")}
  end  
  
  def close_icon
    '<a class="close" data-dismiss="alert">x</a>'.html_safe
  end
  
  def display_audit_table(audited_object)
    # Rails.logger.debug 'dd Audit Mode: About to render the audit_trail partial [display_audit_table routine inside application_helper]'
    # Pass the object we want to Audit
    render :partial => 'partials/audit_trail', :locals => { :audited_object => audited_object }
  end
  
  def team_leader?
    @current_user.try(:role_ids).to_a.each do |role|
      return true if role == 3 # 3 is a Team Leader
    end
    return false
  end
  

end
