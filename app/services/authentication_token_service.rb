class AuthenticationTokenService
    # include ExceptionHandler

    HMAC_SECRET = Rails.application.credentials.secret_jwt_key
    ALGORITHM_TYPE = 'HS256'

    def self.call(user_id)
        payload = {user_id: user_id}

        JWT.encode payload, HMAC_SECRET, ALGORITHM_TYPE
    end

    def self.auth_header(request)
        # { Authorization: 'Bearer <token>' }
        request.headers['Authorization']
    end
    
      def self.decoded_token(request)
        if self.auth_header(request)
          token = self.auth_header(request)
          begin
            decoded_token = JWT.decode(token, HMAC_SECRET, true, algorithm: 'HS256')
          rescue JWT::DecodeError
            raise ExceptionHandler::AuthenticationError, "Unauthorized request"
          end
        else
          raise ExceptionHandler::AuthenticationError, "Unauthorized request"
        end
      end

    #   # provides the more graceful `included` method
    # extend ActiveSupport::Concern
    
    # # Define custom error subclasses - rescue catches `StandardErrors`
    # class AuthenticationError < StandardError; end
    # class MissingToken < StandardError; end
    # class InvalidToken < StandardError; end
  
    # included do
    #   rescue_from ActiveRecord::RecordNotFound do |e|
    #     json_response({ message: e.message }, :not_found)
    #   end
  
    #   rescue_from ActiveRecord::RecordInvalid, with: :four_twenty_two
    #   rescue_from ExceptionHandler::AuthenticationError, with: :unauthorized_request
    #   rescue_from ExceptionHandler::MissingToken, with: :four_twenty_two
    #   rescue_from ExceptionHandler::InvalidToken, with: :four_twenty_two
    # end

    private
  
    # JSON response with message; Status code 422 - unprocessable entity
    def four_twenty_two(e)
      json_response({ message: e.message }, :unprocessable_entity)
    end
  
    # JSON response with message; Status code 401 - Unauthorized
    def unauthorized_request(e)
      json_response({ message: e.message }, :unauthorized)
    end    
end
