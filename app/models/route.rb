# == Schema Information
#
# Table name: routes
#
#  id           :integer          not null, primary key
#  passenger_id :integer
#  vehicle_id   :integer
#  date         :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Route < ApplicationRecord
  belongs_to :passenger
  belongs_to :vehicle
end
