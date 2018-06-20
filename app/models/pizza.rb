class Pizza < ApplicationRecord
  belongs_to :crust
  belongs_to :recipe
  has_one :order
  has_many :ingredients, through: :recipe
end
