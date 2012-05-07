class CreateDeliverables < ActiveRecord::Migration
  def up
    create_table :deliverables do |t|
      t.string :description
      t.string :user_id
      t.string :project_id
      t.string :spec_name
      t.string :spec_progress

      t.timestamps
    end
  end
  
  def down
    drop_table :deliverables
  end
end
