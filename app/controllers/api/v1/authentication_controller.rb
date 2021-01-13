module Api
    module V1
        class AuthenticationController < ApplicationController
            class AuthenticationError < StandardError; end
            
            rescue_from ActionController::ParameterMissing, with: :parameter_missing
            rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found
            rescue_from AuthenticationError, with: :handle_unauthenticated

            def login
                raise AuthenticationError unless user.authenticate(params.require(:password))
                token = AuthenticationTokenService.call(user.id)

                render json: { token: token }, status: :created
            end

            private

            def user
                @user ||= User.find_by!(email: params.require(:email))
            end

            def parameter_missing(e)
                render json: { error: e.message }, status: :unprocessable_entity
            end

            def handle_unauthenticated
                head :unauthorized
            end

            def handle_record_not_found
                head :not_found
            end
        end
    end
end