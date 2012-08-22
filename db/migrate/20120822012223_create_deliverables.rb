class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.string :description
      t.integer :ba_spec_id
      t.integer :tech_spec_id
      t.integer :code_id
      t.integer :testing_id

      t.timestamps
    end
  end
end
