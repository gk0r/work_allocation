class Deliverable < ActiveRecord::Base
  has_many :ba_specs
  has_many :tech_specs
  has_many :code
  
  belongs_to :project
  belongs_to :user
  
  accepts_nested_attributes_for :ba_specs
  accepts_nested_attributes_for :tech_specs
  accepts_nested_attributes_for :code
end
