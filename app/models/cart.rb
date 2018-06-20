class Cart < ApplicationRecord
  belongs_to :customer
  has_many :pizza_carts
  has_many :pizzas, through: :pizza_carts
end
