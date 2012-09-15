class CleanupRfcFromMilestone < ActiveRecord::Migration
  def up
    remove_column :milestones, :rfc_id
  end

  def down
  end
end
