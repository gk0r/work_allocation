class CreateSoftwareReleases < ActiveRecord::Migration
  def up
    create_table :software_releases do |t|
      t.string :name
      t.date :date
      t.string :version

      t.timestamps
    end
  end
  
  def down
    drop_table :software_releases
  end
end
