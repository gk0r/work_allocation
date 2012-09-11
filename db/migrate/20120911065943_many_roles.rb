class ManyRoles < ActiveRecord::Migration
  def up
    add_column :user_roles, :user_id, :integer
    add_column :user_teams, :role_id, :integer
    
    remove_column :users, :team_id
    remove_column :users, :role_id
  end

  def down
  end
end
