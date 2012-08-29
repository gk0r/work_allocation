class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :telephone_number, :role_id, :team_id, :email, :password, :password_confirmation, :remember_me
  belongs_to :role
  belongs_to :team
  
  has_many :projects
  has_many :ba_specs
  has_many :tech_specs
  has_many :code
  
  validates_presence_of :first_name, :last_name, :telephone_number, :role_id, :team_id, :email
  
  def name
    [first_name, last_name].join(' ')
  end
  
end
