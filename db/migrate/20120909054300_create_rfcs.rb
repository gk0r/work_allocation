class CreateRfcs < ActiveRecord::Migration
  def change
    create_table :rfcs do |t|
      t.integer :rfc
      t.string :description
      t.integer :project_id

      t.timestamps
    end
  end
end
