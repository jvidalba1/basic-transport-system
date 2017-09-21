# == Schema Information
#
# Table name: passengers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :passenger do
    name "MyString"
  end
end
