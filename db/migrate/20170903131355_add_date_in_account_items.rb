class AddDateInAccountItems < ActiveRecord::Migration[5.1]
  def change
    add_column :account_items, :date, :date
  end
end
