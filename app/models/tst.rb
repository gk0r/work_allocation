class Tst < ActiveRecord::Base
  attr_accessible :comment, :deliverable_id, :executed_tests, :planned_tests, :status, :user_id
  
  belongs_to :deliverable
  belongs_to :user
  
  # Setup Audit Trail
  has_paper_trail
  def audited_attributes
    [  :comment, :deliverable_id, :executed_tests, :planned_tests, :status, :user_id  ]
  end  
end
