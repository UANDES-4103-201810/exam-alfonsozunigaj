class PizzaCart < ApplicationRecord
  belongs_to :pizza
  belongs_to :cart
end
