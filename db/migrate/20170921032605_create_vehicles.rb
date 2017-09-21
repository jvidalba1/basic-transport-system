class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :license_plate
      t.string :category
      t.string :color
      t.integer :year

      t.timestamps
    end
  end
end
