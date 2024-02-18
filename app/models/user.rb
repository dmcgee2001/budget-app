class User < ApplicationRecord
  has_secure_password
  has_many :income
  has_many :fixed_expenses
  has_many :variable_expenses
end
