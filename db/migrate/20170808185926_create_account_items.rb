class CreateAccountItems < ActiveRecord::Migration[5.1]
  def change
    create_table :account_items do |t|
      t.string :service
      t.integer :contactor_id
      t.float :amount

      t.timestamps
    end
  end
end
