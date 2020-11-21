class TripsController < ApplicationController
    before_action :authorized, only: [:create, :destroy, :update]

    def create
        @trip = @user.trips.create(trip_params)
        if @trip.valid?
            render json: @trip, serializer: TripSerializer
        else 
            @errors = @trip.errors.full_messages
            render json: {errors: @errors}, status: 422
        end
    end

    def destroy
        @trip = Trip.find(params[:id])
        # byebug
        # if destroying a trip with places that has reflections, need to first destroy all the reflections for each place
        # @trip.places.each { |place| place.reflections.destroy_all }
        @trip.places.each do |place|
            if place.reflections.length > 0
                place.reflections.destroy_all
            end
        end
        # byebug
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
