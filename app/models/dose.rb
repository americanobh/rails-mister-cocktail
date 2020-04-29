class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail_id, :ingredient_id, uniqueness: { scope: :ingredient }
  belongs_to :cocktail, :ingredient
end
