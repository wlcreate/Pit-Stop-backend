class PlacesController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        # byebug
        trip_id = params[:trip_id]
        @trip = Trip.all.find(trip_id)
        @place = @trip.places.create(place_params)

        # render json: @place, serializer: PlaceSerializer
        render json: {
                user: UserSerializer.new(@user), 
                place: PlaceSerializer.new(@place),
                chosen_trip: TripSerializer.new(@trip)
            }
    end

    private

    def place_params
        params.permit(:name, :address, :area, :country, :revisit, :category_id)
    end

end
