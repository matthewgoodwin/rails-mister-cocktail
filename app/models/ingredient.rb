class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses
  # ^^ingredient can be used in many coctails through doses
  validates :name, presence: true
  validates :name, uniqueness: true
end
