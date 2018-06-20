class CreatePizzaCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :pizza_carts do |t|
      t.references :cart
      t.references :pizza, foreign_key: true

      t.timestamps
    end
  end
end
