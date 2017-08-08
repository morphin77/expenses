class CreateContractors < ActiveRecord::Migration[5.1]
  def change
    create_table :contractors do |t|
      t.string :title
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
