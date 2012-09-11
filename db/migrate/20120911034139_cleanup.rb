class Cleanup < ActiveRecord::Migration
  def up
    remove_column :projects, :software_release_id
  end

  def down
  end
end
