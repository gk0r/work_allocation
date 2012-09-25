class AddDeliverableIdToOverheads < ActiveRecord::Migration
  def change
    add_column :overheads, :deliverable_id, :integer
  end
end
