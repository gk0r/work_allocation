class AddApprovalToProjectMilestone < ActiveRecord::Migration
  def up
    add_column :milestones, :approval_status, :boolean
  end
  
  def down
    remove_column :milestones, :approval_status
  end
end
