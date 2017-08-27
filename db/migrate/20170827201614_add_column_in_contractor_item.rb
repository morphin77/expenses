class AddColumnInContractorItem < ActiveRecord::Migration[5.1]
  def change
    add_column :contractor_items, :contractor_id, :integer
  end
end
