class Ingredient < ApplicationRecord
  has_many :cocktails, through: :doses
  has_many :doses, dependent: :nullify
  validates :name, presence: true, uniqueness: true
end
