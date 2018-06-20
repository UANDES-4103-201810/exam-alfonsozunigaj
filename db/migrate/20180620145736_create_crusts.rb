class CreateCrusts < ActiveRecord::Migration[5.2]
  def change
    create_table :crusts do |t|
      t.boolean :thin
      t.integer :price

      t.timestamps
    end
  end
end
