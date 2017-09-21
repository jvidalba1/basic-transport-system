# == Schema Information
#
# Table name: vehicles
#
#  id            :integer          not null, primary key
#  license_plate :string
#  category      :string
#  color         :string
#  year          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
