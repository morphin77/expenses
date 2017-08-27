class CreateContractorItems < ActiveRecord::Migration[5.1]
  def change
    create_table :contractor_items do |t|
      t.string :contact_person_name
      t.string :position
      t.string :email
      t.string :phone
      t.text :comment

      t.timestamps
    end
  end
end
