class RfcsCleanup < ActiveRecord::Migration
  def up
    remove_column :rfcs, :project_id
    add_column :rfcs, :milestone_id, :integer
  end

  def down
  end
end
