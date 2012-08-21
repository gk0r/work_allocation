class BaDeliverable < ActiveRecord::Base
  belongs_to :deliverable
  
  attr_accessible       :internal_date, :internal_signoff, :external_date, :external_signoff, :final_date, :comment, :deliverable_id
  validates_presence_of :internal_date, :internal_signoff, :external_date, :external_signoff, :final_date, :comment, :deliverable_id
end
