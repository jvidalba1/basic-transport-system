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

require 'rails_helper'

RSpec.describe Route, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
