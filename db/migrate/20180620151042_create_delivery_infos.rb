class CreateDeliveryInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_infos do |t|
      t.references :customer, foreign_key: true
      t.string :address1
      t.string :address2
      t.integer :phone

      t.timestamps
    end
  end
end
