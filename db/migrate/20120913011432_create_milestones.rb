class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :software_release_id
      t.integer :project_id
      t.integer :rfc_id
      t.string :work_order
      t.date :timesheets_request_date
      t.string :business_pm
      t.string :it_pm
      t.string :test_manager

      t.timestamps
    end
  end
end
