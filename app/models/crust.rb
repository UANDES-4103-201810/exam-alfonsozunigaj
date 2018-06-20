class Crust < ApplicationRecord
  validates :price, presence: true, numericality: { only_integer: true }
end
