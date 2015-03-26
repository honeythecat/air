class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.column :location, :string
      t.column :price, :string
      t.column :photo, :string

      t.timestamps
    end
  end
end
