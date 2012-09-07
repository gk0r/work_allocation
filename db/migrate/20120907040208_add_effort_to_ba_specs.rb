class AddEffortToBaSpecs < ActiveRecord::Migration
  def change
    add_column :ba_specs, :effort, :integer
  end
end
