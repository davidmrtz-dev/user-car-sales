class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.string :year
      t.boolean :used

      t.timestamps
    end
    add_index :cars, :model
    add_index :cars, :brand
    add_reference :cars, :dealer_ship, foreign_key: true
  end
end
