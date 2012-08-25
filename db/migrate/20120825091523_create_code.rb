class CreateCode < ActiveRecord::Migration
  def change
    create_table :code do |t|

      t.timestamps
    end
  end
end
