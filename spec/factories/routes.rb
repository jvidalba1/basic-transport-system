# == Schema Information
#
# Table name: routes
#
#  id         :integer          not null, primary key
#  vehicle_id :integer
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :route do
    vehicle
    date FFaker::Time.date
  end
end
