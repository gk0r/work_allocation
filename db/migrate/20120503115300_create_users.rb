class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :telephone_number
      t.string :role_id
      t.string :team_id

      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
  
end
