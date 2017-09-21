class Api::V1::VehiclesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    render json: Vehicle.all, status: 200
  end

  def create
    vehicle = Vehicle.create(vehicle_params)
    if vehicle.save
      render json: vehicle, status: 200
    else
      render json: { errors: vehicle.errors }, status: 422
    end
  end

  private

    def vehicle_params
      params.require(:vehicle).permit(:license_plate, :color, :year)
    end
end
