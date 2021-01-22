module Api
    module V1
        class UsersController < ApplicationController
            before_action :authenticate_user
            before_action :set_users, only: [:index]
            before_action :set_user, only: [:update]

            def index
                id = @decoded_token[0].values[0]
                user = User.find(id)
                serialized_data = ActiveModelSerializers::SerializableResource.new(user.locations, adapter: :json).as_json
                ActionCable.server.broadcast "room_channel#{user.id}", serialized_data
                render json: @users 
            end

            def update
                @user.update!(user_params)
                p params

                json_response(@user, :ok, user_options)
            end

            private

            def set_users
                @users = User.all
            end

            def set_user
                id = @decoded_token[0].values[0]
                @user = User.find(id)
            end

            def user_params
                params.permit(:first_name, :last_name, :phone, :password, :email)
            end

            def user_options
                ['user', 'location', 'user.customer', 'user.driver', 'user.driver.cars', 'user.driver.cars.car_model']
            end
        end
    end
end
