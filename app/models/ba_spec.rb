class BaSpec < ActiveRecord::Base
  attr_accessible         :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, 
                          :external_review_date, :external_review_signoff, :final_version, :effort, :deliverable

  auto_strip_attributes   :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, 
                          :external_review_date, :external_review_signoff, :final_version, :effort, :deliverable
  
  belongs_to :deliverable
  belongs_to :user
  
  validates_presence_of :deliverable
  
  has_paper_trail
  
  BA_SPEC_AUDITED_ATTRIBUTES = [  :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, 
                                  :external_review_date, :external_review_signoff, :final_version, :effort  ]

  def audited_attributes
    [  :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, 
                                    :external_review_date, :external_review_signoff, :final_version, :effort  ]
  end                                
                                    
  def progress
    read_attribute(:progress).to_s + '%'
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
