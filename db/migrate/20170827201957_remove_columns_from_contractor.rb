class RemoveColumnsFromContractor < ActiveRecord::Migration[5.1]
  def change
    remove_column :contractors, :email
    remove_column :contractors, :phone
    remove_column :contractors, :contact_person
  end
end
