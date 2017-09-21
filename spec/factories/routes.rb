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
    vehicle nil
    date "2017-09-20"
  end
end
