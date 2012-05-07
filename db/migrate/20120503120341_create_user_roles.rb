class CreateUserRoles < ActiveRecord::Migration
  def up
    create_table :user_roles do |t|

      t.timestamps
    end
  end
  
  def down
    drop_table :user_roles
  end
end
