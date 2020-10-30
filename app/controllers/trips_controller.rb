class TripsController < ApplicationController
    before_action :authorized, only: [:create, :destroy, :update]

    def create
        @trip = @user.trips.create(trip_params)

        render json: @trip, serializer: TripSerializer
    end

    def destroy
        @trip = Trip.find(params[:id])
        @trip.places.destroy_all
        @trip.destroy

        render json: @trip, serializer: TripSerializer
    end

    def update
        @trip = Trip.find(params[:id])
        @trip.update(trip_params)

        render json: @trip, serializer: TripSerializer
    end

    private
    
    def trip_params
        # byebug
        params.permit(:title, :start_date, :end_date, :description)
    end

end
