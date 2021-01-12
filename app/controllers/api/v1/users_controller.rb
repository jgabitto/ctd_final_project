module Api
    module V1
        class UsersController < ApplicationController
            before_action :set_users, only: [:index]

            def index
                render json: @users 
            end

            private

            def set_users
                @users = User.all
            end
        end
    end
end
