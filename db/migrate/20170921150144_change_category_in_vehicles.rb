class ChangeCategoryInVehicles < ActiveRecord::Migration[5.1]
  def up
    change_column :vehicles, :category, :integer
  end

  def down
    change_column :vehicles, :category, :string
  end
end
