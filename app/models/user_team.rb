class UserTeam < ActiveRecord::Base
  belongs_to :user
  belongs_to :team
  
  attr_accessible :user_id, :team_id
end
