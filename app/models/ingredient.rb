class Ingredient < ApplicationRecord
  validates :name, presence: true, allow_blank: false, uniqueness: :true
  has_many :doses
  # validates :Ingredient, presence: :true, inclusion: { in: ["lemon", "ice", "mint leaves"]}
end
