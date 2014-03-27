class CreateTsts < ActiveRecord::Migration
  def change
    create_table :tsts do |t|
      t.integer :deliverable_id
      t.integer :user_id
      t.integer :planned_tests
      t.integer :executed_tests
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end
