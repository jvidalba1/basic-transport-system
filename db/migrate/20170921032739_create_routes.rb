class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.references :vehicle, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
