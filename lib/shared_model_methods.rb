module SharedModelMethods

  # 
  # This method is shared by all Deliverable Components (BaSpec, TechSpec, Code and Overhead)
  # 
  def my_team(current_user)
    # Only display Deliverable Components that are assigned to user's team. 
    # if !current_user.nil?
    #   joins(:deliverable).where(:deliverables => {:team_id => current_user.team_ids})
    # else
    #   # Display everything to users who are not signed in as we cannot determine what their team is.
    #   # At some point - I should restrict the application such that everyone has to be logged in.
    #   all
    # end
    all
  end
  
  
end