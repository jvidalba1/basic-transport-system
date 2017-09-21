# == Schema Information
#
# Table name: vehicles
#
#  id            :integer          not null, primary key
#  license_plate :string
#  category      :integer
#  color         :string
#  year          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Vehicle < ApplicationRecord
  has_many :routes, dependent: :destroy

  validates :license_plate, presence: true, uniqueness: true
  
  validates :category, presence: true
  validates :color, presence: true
  validates :year, presence: true

  enum category: [ :category_1, :category_2 ]

  before_validation :set_category

  def set_category
    if license_plate
      if license_plate.slice(0,3) == "ABC"
        self.category = "category_1"
      elsif license_plate.slice(0,3) == "DFG"
        self.category = "category_2"
      else
        errors.add(:license_plate, "does not comply with our policies")
      end
    end
  end
end
