class Cleanup2 < ActiveRecord::Migration
  def up
    drop_table :release_projects
  end

  def down
  end
end
