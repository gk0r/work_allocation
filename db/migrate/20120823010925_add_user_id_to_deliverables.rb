class AddUserIdToDeliverables < ActiveRecord::Migration
  def up
    add_column :deliverables, :user_id, :integer
  end
  
  def down
    remove_column :deliverables, :user_id
  end
end
