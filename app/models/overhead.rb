class Overhead < ActiveRecord::Base
  attr_accessible :description, :effort, :user_id, :deliverable_id
  
  belongs_to :user
  belongs_to :deliverable
  
  validates_presence_of :description
  
end
