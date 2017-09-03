class Contractor < ApplicationRecord
  belongs_to :user
  has_many :contractor_items
  accepts_nested_attributes_for :contractor_items, :allow_destroy => true
end
