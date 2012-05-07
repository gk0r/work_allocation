class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :team
  
  validates_presence_of :username, :first_name, :last_name, :telephone_number, :role_id, :team_id
  
end
