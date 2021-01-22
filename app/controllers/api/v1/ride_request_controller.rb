module Api
    module V1
        class RideRequestController < ApplicationController
            before_action :authenticate_user
            before_action :set_rides, only: [:index]

            def index
                json_response(@rides, :ok) 
            end

            def show

            end

            def create
                @ride = RideRequest.create!(ride_params)
                json_response(@ride, :created)
            end

            private

            def ride_params
                params.permit(:user_id, :driver_id, :gps_starting_point, :latitude, :longitude, :request_start_time, :starting_address, :end_address, :end_latitude, :end_longitude)
            end

            def set_rides
                id = @decoded_token[0].values[0]
                @user = User.find(id)
                @rides = RideRequest.where({user_id: @user.id})
            end

            def set_user
                id = @decoded_token[0].values[0]
                @user = User.find(id)
            end

            # def set_ride
            #     id = @decoded_token[0].values[0]
            #     @user = User.find(id)
            #     @ride = RideRequest.find(@)
            # end
        end
    end
end
