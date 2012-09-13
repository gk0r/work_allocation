class Rfc < ActiveRecord::Base
  attr_accessible :description, :milestone_id, :rfc
  
  belongs_to :milestone
  
  # has_many :ba_specs, :through => :project
  # has_many :deliverables, :through => :project
end
