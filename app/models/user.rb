class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :team
  
  has_many :projects
  has_many :deliverables # No longer need this in the new design
  has_many :ba_specs
  has_many :tech_specs
  has_many :code
  
  validates_presence_of :username, :first_name, :last_name, :telephone_number, :role_id, :team_id
  
  def name
    [first_name, last_name].join(' ')
  end
  
end
