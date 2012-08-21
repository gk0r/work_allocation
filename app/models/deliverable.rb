class Deliverable < ActiveRecord::Base
  has_many :ba_deliverables
  accepts_nested_attributes_for :ba_deliverables, :allow_destroy => true
  
  validates_presence_of :description, :user_id, :project_id, :spec_name, :spec_progress
  attr_accessible       :description, :user_id, :project_id, :spec_name, :spec_progress, :ba_deliverables_attributes
end
