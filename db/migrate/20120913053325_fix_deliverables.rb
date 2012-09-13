class FixDeliverables < ActiveRecord::Migration
  def up
    remove_column :deliverables, :software_release_id
    add_column :deliverables, :milestone_id, :integer
  end

  def down
  end
end
