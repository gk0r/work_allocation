class BaSpec < ActiveRecord::Base
  belongs_to :deliverable
  belongs_to :user
  
  validates_presence_of :comments
  
  def progress
    read_attribute(:progress).to_s + '%'
  end
  
end
