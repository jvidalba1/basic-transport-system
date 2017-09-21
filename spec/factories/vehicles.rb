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
    license_plate "MyString"
    category "MyString"
    color "MyString"
    year 1
  end
end
