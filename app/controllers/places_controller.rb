class PlacesController < ApplicationController
    before_action :authorized, only: [:create, :destroy, :update]

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

    def destroy
        # byebug
        @place = Place.find(params[:id])
        @place.reflections.destroy_all
        @place.destroy

        render json: {
            user: UserSerializer.new(@user), 
            place: PlaceSerializer.new(@place)
        }
    end

    def update
        # byebug
        @place = Place.find(params[:id])
        @place.update(place_params)

        render json: {
            user: UserSerializer.new(@user), 
            place: PlaceSerializer.new(@place)
        }
    end

    private

    def place_params
        params.permit(:name, :address, :area, :country, :revisit, :category_id)
    end

end
