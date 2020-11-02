class ReflectionsController < ApplicationController
    before_action :authorized, only: [:create, :destroy, :update]

    def create
        # byebug
        place_id = params[:place_id]
        @place = Place.all.find(place_id)
        @reflection = @place.reflections.create(reflection_params)

        render json: {
                user: UserSerializer.new(@user), 
                chosen_place: PlaceSerializer.new(@place),
                reflection: ReflectionSerializer.new(@reflection)
            }
    end

    private

    def reflection_params
        params.permit(:date_visited, :rating, :content)
    end

end
