class RfcIdCleanup < ActiveRecord::Migration
  def up
    remove_column :projects, :rfc_id
  end

  def down
  end
end
