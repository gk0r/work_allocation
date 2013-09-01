class BaSpec < ActiveRecord::Base
  attr_accessible         :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, 
                          :external_review_date, :external_review_signoff, :final_version, :effort, :deliverable, :tag_list

  auto_strip_attributes   :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, 
                          :external_review_date, :external_review_signoff, :final_version, :effort  
  
  belongs_to :deliverable
  belongs_to :user
  
  has_one :project, :through => :deliverable
  
  validates_presence_of :deliverable
  validates_presence_of :internal_review_date, :if => :internal_review_signoff, :message => I18n.t('error.quality_gate')
  validates_presence_of :external_review_date, :if => :external_review_signoff, :message => I18n.t('error.quality_gate')
  
  # Re-Implement this with the view to restrict progress based on the current quality gate milestone
  # validates :progress, :numericality => { :greater_than => 90 }

  acts_as_taggable
  
  has_paper_trail
  
  # Validate the Requirement / Process tags to ensure that it is a comma (or space) separated string that only contains Rn or Pn.
  # Where 'n' is a number in 1..99 range
  validates :tag_list, :format => { :with => /^([R,P][0-9]{1,2},?\s?)*$/,
      :message => I18n.t('error.requirement_process_format') }  
  
  def audited_attributes
    [  :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, 
                                    :external_review_date, :external_review_signoff, :final_version, :effort  ]
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

  #
  # Virtual Attributes
  # 
  # I may end up having to re-implement this code in the future, so leaving the section below as is for now
  # 
  # 
  #
  # attr_accessible :milestone, :project
  # 
  # def project
  # end
  # 
  # def milestone
  # end
  
end
