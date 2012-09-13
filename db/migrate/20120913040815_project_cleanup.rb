class ProjectCleanup < ActiveRecord::Migration
  def up
    remove_column :projects, :work_order
    remove_column :projects, :timesheets_request_date
    remove_column :projects, :business_pm
    remove_column :projects, :it_pm
    remove_column :projects, :test_manager
  end

  def down
  end
end