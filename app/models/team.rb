class Team < ActiveRecord::Base
  has_many :users
  has_many :deliverables
  
  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false
end
