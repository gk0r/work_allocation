class TechSpec < ActiveRecord::Base
  attr_accessible       :deliverable_id, :user_id, :name, :effort, :comments, :progress, :internal_review_date, :internal_review_signoff, :final_version
  auto_strip_attributes :deliverable_id, :user_id, :name, :effort, :comments, :progress, :internal_review_date, :internal_review_signoff, :final_version
  
  belongs_to :deliverable
  belongs_to :user
  
  has_one :project, :through => :deliverable
  
  validates_presence_of :deliverable

  has_paper_trail

  validates_presence_of :internal_review_date, :if => :internal_review_signoff, :message => I18n.t('error.quality_gate')

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
  
  def audited_attributes
    [  :deliverable_id, :user_id, :name, :effort, :comments, :progress, :internal_review_date, :internal_review_signoff, :final_version  ]
  end                                
  
  def progress
    read_attribute(:progress).to_s + '%'
  end
  
end
