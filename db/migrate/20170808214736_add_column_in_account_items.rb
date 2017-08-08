class AddColumnInAccountItems < ActiveRecord::Migration[5.1]
  def change
    add_column :account_items, :account_id, :integer
  end
end
