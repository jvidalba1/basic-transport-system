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

class Route < ApplicationRecord
  belongs_to :vehicle
  has_and_belongs_to_many :passengers
end
