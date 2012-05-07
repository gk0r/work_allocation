class CreateBaDeliverables < ActiveRecord::Migration
  def change
    create_table :ba_deliverables do |t|
      t.date :internal_date
      t.boolean :internal_signoff
      t.date :external_date
      t.boolean :external_signoff
      t.date :final_date
      t.string :comment

      t.timestamps
    end
  end
end
