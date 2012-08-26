class AddReleaseToDeliverables < ActiveRecord::Migration
  def change
    add_column :deliverables, :software_release_id, :integer
  end
end
