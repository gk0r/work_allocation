class Project < ActiveRecord::Base
  belongs_to :software_release
  belongs_to :user

  has_many :deliverables
  has_many :rfcs
  
  accepts_nested_attributes_for :rfcs
  
  validates_presence_of :name
  
end
