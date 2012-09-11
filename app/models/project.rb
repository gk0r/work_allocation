class Project < ActiveRecord::Base
  belongs_to :software_release
  belongs_to :user

  has_many :deliverables
  # has_many :ba_specs#, :through => :deliverables
  has_many :ba_specs, :through => :deliverables
  has_many :rfcs, :inverse_of => :project
  
  accepts_nested_attributes_for :rfcs
  
  validates_presence_of :name
  
end
