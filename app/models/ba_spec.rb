class BaSpec < ActiveRecord::Base
  attr_accessible         :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, :external_review_date, :external_review_signoff, :final_version, :effort
  auto_strip_attributes   :deliverable_id, :user_id, :name, :comments, :progress, :internal_review_date, :internal_review_signoff, :external_review_date, :external_review_signoff, :final_version, :effort
  
  belongs_to :deliverable
  belongs_to :user
  
  validates_presence_of :deliverable
  
  def progress
    read_attribute(:progress).to_s + '%'
  end
  
end
