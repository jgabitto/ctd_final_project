module Api
    module V1
        class UsersController < ApplicationController
            before_action :set_users, only: [:index]

            def index
                id = @decoded_token[0].values[0]
                user = User.find(id)
                serialized_data = ActiveModelSerializers::SerializableResource.new(user.locations, adapter: :json).as_json
                # serialized_data = ActiveModelSerializers::SerializableResource.new(
                #     UserSerializer.new(@users)
                #   ).serializable_hash
                  ActionCable.server.broadcast "room_channel#{user.id}", serialized_data
                render json: @users 
            end

            private

            def set_users
                @users = User.all
            end
        end
    end
end
