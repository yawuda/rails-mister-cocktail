class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # validates :name, presence: :true
  # validates :ingredient, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient, message: "should have only one combination"}
end
