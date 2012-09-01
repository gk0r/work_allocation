class Project < ActiveRecord::Base
  belongs_to :software_release
  belongs_to :user

  has_many :deliverables
  
  validates_presence_of :name
  
end
