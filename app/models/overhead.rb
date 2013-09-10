class Overhead < ActiveRecord::Base
  attr_accessible :description, :effort, :user_id, :deliverable_id
  
  belongs_to :user
  belongs_to :deliverable
  
  validates_presence_of :description
  validates_presence_of :deliverable  # Ensure that all Overheads belong to a Deliverable
  
  # 
  # TODO: Find if there is a better way to inherit this processing. I do not want to have to specify this on model by model, it would make more
  #       sense to inherit.
  # 
  def self.my_team(current_user)
    # Only display Deliverable Components that are assigned to user's team. 
    if !current_user.nil?
      joins(:deliverable).where(:deliverables => {:team_id => current_user.team_ids}).includes(:user)
    else
      # Display everything to users who are not signed in as we cannot determine what their team is.
      # At some point - I should restrict the application such that everyone has to be logged in.
      all
    end
  end
  
end
