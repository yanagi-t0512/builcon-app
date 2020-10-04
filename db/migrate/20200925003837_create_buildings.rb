class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :property_name
      t.string :room_number
      t.string :customer_name

      t.timestamps
    end
  end
end
