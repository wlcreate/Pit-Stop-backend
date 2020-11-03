class UsersController < ApplicationController
    before_action :authorized, only: [:keep_logged_in, :check_password, :update]

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
            @errors = @user.errors.full_messages
            render json: {errors: @errors}, status: 422
        end
    end

    def check_password
        if @user && @user.authenticate(params[:password])
            
            render json: {
                user: UserSerializer.new(@user)
            }

        else
            render json: {error: "Incorrect Password"}, status: 422
        end
    end

    def update
        if @user && @user.authenticate(params[:password])
            wristband_token = encode_token({user_id: @user.id})
            @user.update(user_params)

            render json: {
                user: UserSerializer.new(@user),
                token: wristband_token
            }
        elsif params[:password] != "" && params[:password] == params[:confirm_password]
            wristband_token = encode_token({user_id: @user.id})
            @user.update(user_params)

            render json: {
                user: UserSerializer.new(@user),
                token: wristband_token
            }
        else
            render json: {error: "Password needs to be filled and/or Passwords do not match"}, status: 422
        end
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :username, :password)
    end

end
