class Code < ActiveRecord::Base
  attr_accessible         :deliverable_id, :user_id, :progress, :comments, :code_review_date, :q_level_date, :staged_date, :effort
  auto_strip_attributes   :deliverable_id, :user_id, :progress, :comments, :code_review_date, :q_level_date, :staged_date, :effort
  
  has_paper_trail
  
  belongs_to :deliverable
  belongs_to :user
  
  has_one :project, :through => :deliverable  
  
  validates_presence_of :deliverable
  
  def audited_attributes
    [  :deliverable_id, :user_id, :progress, :comments, :code_review_date, :q_level_date, :staged_date, :effort  ]
  end
  
  def progress
    read_attribute(:progress).to_s + '%'
  end  

  def self.my_team(current_user)
    # Only display Deliverable Components that are assigned to user's team. 
    if !current_user.nil?
      joins(:deliverable).where(:deliverables => {:team_id => current_user.team_ids}).includes(:project, :user)
    else
      # Display everything to users who are not signed in as we cannot determine what their team is.
      # At some point - I should restrict the application such that everyone has to be logged in.
      all
    end
  end

end