class AddEffortToTechSpecs < ActiveRecord::Migration
  def change
    add_column :tech_specs, :effort, :integer
  end
end
