class TripsController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        @trip = @user.trips.create(trip_params)

        render json: @trip
    end

    private
    
    def trip_params
        # byebug
        params.permit(:title, :start_date, :end_date, :description)
    end

end
