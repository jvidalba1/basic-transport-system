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

require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  let(:vehicle) { FactoryGirl.build :vehicle }
  subject { vehicle }

  it { is_expected.respond_to?(:license_plate) }
  it { is_expected.respond_to?(:color) }
  it { is_expected.respond_to?(:category) }
  it { is_expected.respond_to?(:year) }

  it { is_expected.to validate_presence_of :license_plate }
  it { is_expected.to validate_presence_of :color }
  it { is_expected.to validate_presence_of :year }

  it { is_expected.to validate_uniqueness_of(:license_plate) }

  it { is_expected.to have_many(:routes) }

  describe ".set_category" do 
    before(:each) do 
      @vehicle = FactoryGirl.create :vehicle, license_plate: "ABC546"
    end

    it 'sets category to 1' do
      expect(@vehicle.category).to eq "category_1"
    end

  end
end
