class ProjectTable < ActiveRecord::Migration
  def up
    add_column :projects, :business_pm, :string
    add_column :projects, :it_pm, :string
    add_column :projects, :test_manager, :string
  end

  def down
  end
end
