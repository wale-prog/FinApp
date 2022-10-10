class Expense < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :exp_cats
end