class Account < ApplicationRecord
  belongs_to :project
  has_many :account_items, foreign_key: "account_id"
  has_many :contractors, through: :account_items
  accepts_nested_attributes_for :account_items
end
