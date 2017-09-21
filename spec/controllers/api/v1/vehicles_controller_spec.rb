require 'rails_helper'

RSpec.describe Api::V1::VehiclesController, type: :controller do
  describe "GET #index" do
    before(:each) do
      4.times { FactoryGirl.create :vehicle }
      get :index, format: :json
    end

    it "returns 4 vehicles" do
      vehicle_response = json_response
      expect(vehicle_response.count).to eq(4)
    end

    it 'returns the vehicle information' do 
      vehicle_response = json_response
      vehicle_response.each do |vehicle_response|
        expect(vehicle_response[:license_plate]).to be_present
        expect(vehicle_response[:category]).to be_present
        expect(vehicle_response[:color]).to be_present
        expect(vehicle_response[:year]).to be_present
      end
    end
  end

  describe "POST #create" do
    context "when is successfully created" do
      before(:each) do
        vehicle = FactoryGirl.create :vehicle
        @vehicle_attributes = FactoryGirl.attributes_for :vehicle
        post :create, params: { vehicle: @vehicle_attributes }, format: :json
      end

      it "renders the vehicle record created" do
        vehicle_response = json_response
        expect(vehicle_response[:license_plate]).to eql @vehicle_attributes[:license_plate]
      end
    end

    context "when is not created" do
      before(:each) do
        @invalid_vehicle_attributes = { license_plate: "ASD123" }
        post :create, params: { vehicle: @invalid_vehicle_attributes }, format: :json
      end

      it "renders an errors json" do
        vehicle_response = json_response
        expect(vehicle_response).to have_key(:errors)
      end

      it "renders json errors" do
        vehicle_response = json_response
        expect(vehicle_response[:errors][:license_plate]).to include "does not comply with our policies"
        expect(vehicle_response[:errors][:category]).to include "can't be blank"
        expect(vehicle_response[:errors][:color]).to include "can't be blank"
        expect(vehicle_response[:errors][:year]).to include "can't be blank"
      end
    end
  end
end
