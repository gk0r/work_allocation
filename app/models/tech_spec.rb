class TechSpec < ActiveRecord::Base
  belongs_to :deliverables
  belongs_to :user
  
  validates_presence_of :deliverable_id
  
  def progress
    read_attribute(:progress).to_s + '%'
  end  
end
