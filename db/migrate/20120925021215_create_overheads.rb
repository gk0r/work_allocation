class CreateOverheads < ActiveRecord::Migration
  def change
    create_table :overheads do |t|
      t.string :description
      t.integer :user_id
      t.integer :effort

      t.timestamps
    end
  end
end
