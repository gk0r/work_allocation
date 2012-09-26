class Code < ActiveRecord::Base
  attr_accessible         :deliverable_id, :user_id, :progress, :comments, :code_review_date, :q_level_date, :staged_date, :effort
  auto_strip_attributes   :deliverable_id, :user_id, :progress, :comments, :code_review_date, :q_level_date, :staged_date, :effort
  
  has_paper_trail
  
  belongs_to :deliverable
  belongs_to :user
  
  validates_presence_of :deliverable

  def audited_attributes
    [  :deliverable_id, :user_id, :progress, :comments, :code_review_date, :q_level_date, :staged_date, :effort  ]
  end
  
  def progress
    read_attribute(:progress).to_s + '%'
  end  
end