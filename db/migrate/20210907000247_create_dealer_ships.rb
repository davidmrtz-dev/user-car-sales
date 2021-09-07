class CreateDealerShips < ActiveRecord::Migration[6.1]
  def change
    create_table :dealer_ships do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
    add_index :dealer_ships, :name, unique: true
    add_index :dealer_ships, :location
  end
end
