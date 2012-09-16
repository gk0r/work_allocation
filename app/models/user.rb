class User < ActiveRecord::Base
  attr_accessible       :first_name, :last_name, :username, :telephone_number, :role_ids, :team_ids, :email
  auto_strip_attributes :first_name, :last_name, :username, :telephone_number, :role_ids, :team_ids, :email
  
  has_many :user_roles
  has_many :user_teams
  has_many :roles,        :through => :user_roles
  has_many :teams,        :through => :user_teams
  
  has_many :projects
  has_many :ba_specs
  has_many :tech_specs
  has_many :code
  
  validates_presence_of :email, :first_name, :last_name, :username
  validates_uniqueness_of :username, :email
  
  def name
    [first_name, last_name].join(' ')
  end
  
  def email=(email_address)
    # Strip out ALL spaces from the email address
    write_attribute(:email, email_address.downcase.gsub(/\s+/, ""))
  end
  
  def username=(value)
    write_attribute(:username, value.downcase)
  end
  
end
