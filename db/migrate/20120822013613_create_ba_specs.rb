class CreateBaSpecs < ActiveRecord::Migration
  def change
    create_table :ba_specs do |t|
      t.integer :deliverable_id
      t.string :name
      t.string :comments
      t.integer :progress
      t.date :internal_review_date
      t.boolean :internal_review_signoff
      t.date :external_review_date
      t.boolean :external_review_signoff
      t.date :final_version

      t.timestamps
    end
  end
end
