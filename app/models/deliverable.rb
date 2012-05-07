class Deliverable < ActiveRecord::Base
  belongs_to :ba_deliverables
  accepts_nested_attributes_for :ba_deliverables
end
