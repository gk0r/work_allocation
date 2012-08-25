class Deliverable < ActiveRecord::Base
  has_many :ba_specs
  has_many :tech_specs
  has_many :code
  
  belongs_to :project
  belongs_to :user
  
  accepts_nested_attributes_for :ba_specs # Add the destroy calls in here, so that if the Deliverable is deleted, all associated 
  accepts_nested_attributes_for :tech_specs
  accepts_nested_attributes_for :code

  validates_presence_of :description
  
  def name
    description
  end
end
