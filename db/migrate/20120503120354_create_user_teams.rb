class CreateUserTeams < ActiveRecord::Migration
  def up
    create_table :user_teams do |t|

      t.timestamps
    end
  end
  
  def down
    drop_table :user_teams
  end
end
