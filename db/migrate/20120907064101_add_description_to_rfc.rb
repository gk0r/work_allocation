class AddDescriptionToRfc < ActiveRecord::Migration
  def change
    add_column :rfcs, :description, :string
  end
end
