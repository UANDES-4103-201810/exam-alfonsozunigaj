class AddFieldToPizza < ActiveRecord::Migration[5.2]
  def change
    add_reference :pizzas, :order, foreign_key: true
  end
end
