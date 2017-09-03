class AccountItem < ApplicationRecord
  belongs_to :account
  belongs_to :contractor
end
