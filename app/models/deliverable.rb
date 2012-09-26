class Deliverable < ActiveRecord::Base
  has_many :ba_specs    , :inverse_of => :deliverable, :dependent => :destroy
  has_many :tech_specs  , :inverse_of => :deliverable, :dependent => :destroy
  has_many :code        , :inverse_of => :deliverable, :dependent => :destroy
  has_many :overheads   , :dependent  => :destroy

  belongs_to :milestone  
  belongs_to :project
  belongs_to :user
  belongs_to :team

  accepts_nested_attributes_for :ba_specs
  accepts_nested_attributes_for :tech_specs
  accepts_nested_attributes_for :code
  accepts_nested_attributes_for :overheads

  validates_presence_of :description

  def self.my_team(current_user)
    # Only display Deliverable Components that are assigned to user's team. 
    if !current_user.nil?
      where(:deliverables => {:team_id => current_user.team_ids})
    else
      # Display everything to users who are not signed in as we cannot determine what their team is.
      # At some point - I should restrict the application such that everyone has to be logged in.
      all
    end
  end

  def name
    description
  end
  
end
