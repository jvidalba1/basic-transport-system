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
  let(:route) { FactoryGirl.build :route }
  subject { route }

  it { is_expected.respond_to?(:date) }
  it { is_expected.respond_to?(:vehicle_id) }

  it { is_expected.to belong_to(:vehicle) }
  it { is_expected.to have_and_belong_to_many(:passengers) }
end
