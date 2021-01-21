module Api
    module V1
        class AuthenticationController < ApplicationController
            before_action :authenticate_user, except: :login
            
            def login
                raise AuthenticationError unless user.authenticate(params.require(:password))
                # token = AuthenticationTokenService.call(user.id)
                # response.set_header('Authentication', token)
                create_and_send_token(user.id)
                json_response(user, :ok, user_options)
            end

            def register
                new_user = User.create!(user_params)
                create_and_send_token(new_user.id)
                json_response(new_user, :created)
            end

            private

            def user_params
                params.permit(:email, :password)
            end

            def create_and_send_token user_id
                token = AuthenticationTokenService.call(user_id)
                response.set_header('Authorization', token)
            end

            def user
                @user ||= User.find_by!(email: params.require(:email))
            end

            def user_options
                ['user', 'location', 'customer', 'driver', 'driver.cars', 'driver.cars.car_model']
            end
        end
    end
end