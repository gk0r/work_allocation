class Rfc < ActiveRecord::Base
  attr_accessible :description, :project_id, :rfc
  
  belongs_to :project
  
  # has_many :ba_specs, :through => :project
  has_many :deliverables, :through => :project
end
