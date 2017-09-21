require 'rails_helper'

RSpec.describe RoutesController, type: :controller do
  describe "GET #index" do
    before (:each) do
      @passenger = FactoryGirl.create :passenger
    end
    
    context 'when a passenger is logged in' do 
      before (:each) do
        4.times do 
          route = FactoryGirl.create :route
          @passenger.routes << route
        end

        sign_in @passenger
        get :index, params: { passenger_id: @passenger.id }
      end

      it 'renders the OK code status' do 
        expect(response.code).to eq "200"
      end
    end

    context 'when there is no a passenger logged in' do
      it "redirects passenger to log in page" do
        get :index, params: { passenger_id: @passenger.id }
        expect(response).to redirect_to new_passenger_session_path
      end  
    end
  end

end
