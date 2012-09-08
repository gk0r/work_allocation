class AddRfcToRfcs < ActiveRecord::Migration
  def change
    add_column :rfcs, :rfc, :integer
  end
end
