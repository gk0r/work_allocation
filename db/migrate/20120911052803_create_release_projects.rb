class CreateReleaseProjects < ActiveRecord::Migration
  def change
    create_table :release_projects do |t|
      t.integer :project_id
      t.integer :software_release_id

      t.timestamps
    end
  end
end
