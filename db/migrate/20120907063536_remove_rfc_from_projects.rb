class RemoveRfcFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :rfc
  end
end
