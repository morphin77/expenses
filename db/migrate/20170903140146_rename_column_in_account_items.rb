class RenameColumnInAccountItems < ActiveRecord::Migration[5.1]
  def change
    rename_column :account_items, :contactor_id, :contractor_id
  end
end
