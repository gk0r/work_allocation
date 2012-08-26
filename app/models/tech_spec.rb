class TechSpec < ActiveRecord::Base
  belongs_to :deliverables
  belongs_to :user
  
  def progress
    read_attribute(:progress).to_s + '%'
  end  
end
