class BaSpec < ActiveRecord::Base
  belongs_to :deliverable
  
  validates_presence_of :name
end
