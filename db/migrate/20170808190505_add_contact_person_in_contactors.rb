class AddContactPersonInContactors < ActiveRecord::Migration[5.1]
  def change
    add_column :contractors, :contact_person, :string
  end
end
