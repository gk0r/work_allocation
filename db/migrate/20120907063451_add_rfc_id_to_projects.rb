class AddRfcIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :rfc_id, :integer
  end
end
