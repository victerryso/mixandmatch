class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :suburb
      t.integer :postcode
      t.text :location
      t.string :cuisine
      t.text :urbanspoon
      t.timestamps
    end
  end
end