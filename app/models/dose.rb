class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates  :description, presence: true
  validates :cocktail, uniqueness:{ scope: :ingredient}
  # ^^ ensures that only one [cocktail/ingredient] pair are present in the db
end
