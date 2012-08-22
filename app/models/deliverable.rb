class Deliverable < ActiveRecord::Base
  has_many :ba_specs
  has_many :tech_specs
  belongs_to :project
  
  accepts_nested_attributes_for :ba_specs
  accepts_nested_attributes_for :tech_specs
end
