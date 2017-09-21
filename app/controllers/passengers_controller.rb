class PassengersController < ApplicationController
  before_action :authenticate_passenger!, only: [:index]  

  def index
    @routes = current_passenger.routes
  end
end
