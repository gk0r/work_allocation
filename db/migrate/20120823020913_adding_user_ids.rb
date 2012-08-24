class AddingUserIds < ActiveRecord::Migration
  def up
    add_column :ba_specs, :user_id, :integer
    add_column :tech_specs, :user_id, :integer
    add_column :code, :user_id, :integer
    
    remove_column :deliverables, :user_id
  end

  def down

  end
end
