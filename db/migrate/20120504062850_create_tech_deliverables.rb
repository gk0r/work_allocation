class CreateTechDeliverables < ActiveRecord::Migration
  def change
    create_table :tech_deliverables do |t|
      t.string :spec_name
      t.string :spec_progress
      t.date :spec_review
      t.string :code_progress
      t.date :code_review
      t.boolean :code_staged
      t.string :comments

      t.timestamps
    end
  end
end
