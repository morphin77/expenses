class AddProjectIdInAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :project_id, :integer
  end
end
