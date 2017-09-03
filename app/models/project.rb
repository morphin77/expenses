class Project < ApplicationRecord
  belongs_to :user
  has_many :accounts, foreign_key: "project_id"
  has_many :account_items, through: :accounts
end
