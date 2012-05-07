class AddBaDeliverableAndTechDeliverableToDeliverables < ActiveRecord::Migration
  def up
    add_column :deliverables, :ba_deliverable_id, :string
    add_column :deliverables, :tech_deliverable_id, :string
  end
  
  def down
    remove_column :deliverables, :ba_deliverable_id, :string
    remove_column :deliverables, :tech_deliverable_id, :string
  end
end