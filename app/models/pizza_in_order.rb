class PizzaInOrder < ApplicationRecord
  belongs_to :order
  belongs_to :pizza
end
