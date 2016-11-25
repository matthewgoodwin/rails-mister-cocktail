class Cocktail < ApplicationRecord

  has_many :doses, dependent: :destroy #ensures that the
  has_many :ingredients,through: :doses
  # ^^coctail has many ingredients through doses
  validates :name, presence: true
  validates :name, uniqueness: true
end
