class TechSpec < ActiveRecord::Base
  belongs_to :deliverable
  belongs_to :user
  
  validates_presence_of :deliverable
  
  def progress
    read_attribute(:progress).to_s + '%'
  end
  
  def self.to_csv(options = {})
    to_csv(record, options = {})
  end
  
  
end
