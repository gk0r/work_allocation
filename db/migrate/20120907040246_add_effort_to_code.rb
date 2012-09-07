class AddEffortToCode < ActiveRecord::Migration
  def change
    add_column :code, :effort, :integer
  end
end
