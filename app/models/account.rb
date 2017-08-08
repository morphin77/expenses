class Account < ApplicationRecord
  belongs_to :project
  has_many :account_items, inverse_of: :account
  accepts_nested_attributes_for :account_items
end
