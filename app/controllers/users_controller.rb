class UsersController < ApplicationController
    before_action :authorized, only: [:keep_logged_in]

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            wristband_token = encode_token({user_id: @user.id})

            render json: {
                user: UserSerializer.new(@user), 
                token: wristband_token
            }

        else
            render json: {error: "Incorrect Username or Password"}, status: 422
        end
    end

    def keep_logged_in
        wristband_token = encode_token({user_id: @user.id})

        render json: {
            user: UserSerializer.new(@user), 
            token: wristband_token
        }
    end

    def create
        # byebug
        @user = User.create(user_params)
        if @user.valid?
            wristband_token = encode_token({user_id: @user.id})

            render json: {
                user: UserSerializer.new(@user), 
                token: wristband_token
            }
        else
            render json: {error: "Invalid User"}, status: 422
        end
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :username, :password)
    end

end
