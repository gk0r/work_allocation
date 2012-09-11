class Cleanup < ActiveRecord::Migration
  def up
    add_column :user_roles, :role_id, :integer
    remove_column :user_teams, :role_id
    
    add_column :user_teams, :user_id, :integer
    add_column :user_teams, :team_id, :integer
  end

  def down
  end
end
