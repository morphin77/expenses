class Remove < ActiveRecord::Migration[5.1]
  def change
    remove_column :account_items, :account_id
  end
end
