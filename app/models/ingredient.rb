class Ingredient < ApplicationRecord
  validates :name, presence: true, allow_blank: false, uniqueness: :true
  has_many :doses
  validates :Ingredient, inclusion: { in: ["lemon", "ice", "mint leaves"]}
end
