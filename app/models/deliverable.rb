class Deliverable < ActiveRecord::Base
  has_many :ba_specs    , :inverse_of => :deliverable
  has_many :tech_specs  , :inverse_of => :deliverable
  has_many :code        , :inverse_of => :deliverable
  
  belongs_to :project
  belongs_to :user
  belongs_to :software_release
  belongs_to :team
  
  accepts_nested_attributes_for :ba_specs # Add the destroy calls in here, so that if the Deliverable is deleted, all associated 
  accepts_nested_attributes_for :tech_specs
  accepts_nested_attributes_for :code

  validates_presence_of :description
  
  def name
    description
  end
end
