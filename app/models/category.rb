class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses, through: :exp_cats, dependent: :destroy

  validates :name, :icon, presence: true
end
