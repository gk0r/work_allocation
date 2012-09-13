class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :username, :telephone_number, :email, :role_ids, :team_ids
  
  has_many :user_roles
  has_many :user_teams
  has_many :roles,        :through => :user_roles
  has_many :teams,        :through => :user_teams
  
  has_many :projects
  has_many :ba_specs
  has_many :tech_specs
  has_many :code
  
  validates_presence_of :email, :first_name, :last_name, :username
  
  def name
    [first_name, last_name].join(' ')
  end
  
end
