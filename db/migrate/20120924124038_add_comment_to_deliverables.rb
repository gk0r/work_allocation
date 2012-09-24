class AddCommentToDeliverables < ActiveRecord::Migration
  def change
    add_column :deliverables, :comment, :string
  end
end
