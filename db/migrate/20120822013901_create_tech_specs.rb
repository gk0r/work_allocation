class CreateTechSpecs < ActiveRecord::Migration
  def change
    create_table :tech_specs do |t|
      t.integer :deliverable_id
      t.string :name
      t.string :comment
      t.date :internal_review_date
      t.boolean :internal_review_signoff
      t.date :final_version

      t.timestamps
    end
  end
end
