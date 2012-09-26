class TechSpec < ActiveRecord::Base
  attr_accessible       :deliverable_id, :user_id, :name, :effort, :comments, :progress, :internal_review_date, :internal_review_signoff, :final_version
  auto_strip_attributes :deliverable_id, :user_id, :name, :effort, :comments, :progress, :internal_review_date, :internal_review_signoff, :final_version
  
  belongs_to :deliverable
  belongs_to :user
  
  validates_presence_of :deliverable

  has_paper_trail
  
  def audited_attributes
    [  :deliverable_id, :user_id, :name, :effort, :comments, :progress, :internal_review_date, :internal_review_signoff, :final_version  ]
  end                                
  
  def progress
    read_attribute(:progress).to_s + '%'
  end
  
  # def self.to_csv(options = {})
  #   to_csv(record, options = {})
  # end
  
end
