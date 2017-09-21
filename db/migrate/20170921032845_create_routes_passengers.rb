class CreateRoutesPassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers_routes do |t|
      t.references :route, foreign_key: true
      t.references :passenger, foreign_key: true
    end
  end
end
