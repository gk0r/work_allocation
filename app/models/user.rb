class User < ActiveRecord::Base
  attr_accessible       :first_name, :last_name, :username, :telephone_number, :email, :role_ids, :team_ids
  auto_strip_attributes :first_name, :last_name, :username, :telephone_number, :email, :role_ids, :team_ids
  
  has_many :user_roles
  has_many :user_teams
  has_many :roles,        :through => :user_roles
  has_many :teams,        :through => :user_teams
  
  has_many :projects
  has_many :ba_specs
  has_many :tech_specs
  has_many :code
  has_many :overheads
  
  has_paper_trail
  
  def audited_attributes
    [  :first_name, :last_name, :username, :telephone_number, :email  ]
  end                                
  
  def self.my_team(current_user, role)
    if !current_user.nil?
      joins(:user_teams).where(:user_teams => {:team_id => current_user.team_ids}).joins(:user_roles).where(:user_roles => {:role_id => role}).uniq.order(:first_name, :last_name)
    else
      all
    end
  end
  
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
