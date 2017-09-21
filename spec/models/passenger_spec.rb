# == Schema Information
#
# Table name: passengers
#
#  id                     :integer          not null, primary key
#  name                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#

require 'rails_helper'

RSpec.describe Passenger, type: :model do
  let(:passenger) { FactoryGirl.build :passenger }
  subject { passenger }

  it { is_expected.respond_to?(:name) }
  it { is_expected.respond_to?(:email) }

  it { is_expected.to have_and_belong_to_many(:routes) }
end
