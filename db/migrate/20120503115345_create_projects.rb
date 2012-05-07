class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.string :name
      t.string :dmr
      t.string :software_release_id
      t.string :warrant_status
      t.string :work_order
      t.string :rfc
      t.string :timesheets_request_date
      t.string :admin_ref

      t.timestamps
    end
  end
  
  def down
    drop_table :projects
  end
end
