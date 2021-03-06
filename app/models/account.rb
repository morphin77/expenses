class Account < ApplicationRecord
  belongs_to :project
  has_many :account_items
  has_many :contractors, through: :account_items
  accepts_nested_attributes_for :account_items
end
