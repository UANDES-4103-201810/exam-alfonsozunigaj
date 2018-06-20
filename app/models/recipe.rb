class Recipe < ApplicationRecord
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes
  validates :price, presence: true, numericality: { only_integer: true }
  validates :name, presence: true
end
