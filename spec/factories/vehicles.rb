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

FactoryGirl.define do
  factory :vehicle do
    sequence(:license_plate) { |n| "ABC#{n}#{n}#{n}" }
    category "category_1"
    color "Blanco"
    year 2010
  end
end
