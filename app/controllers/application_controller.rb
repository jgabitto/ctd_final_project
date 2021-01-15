class ApplicationController < ActionController::API
    before_action :authenticate_user
    
    include Response
    include ExceptionHandler

    class AuthenticationError < StandardError; end
    class MissingToken < StandardError; end
    class InvalidToken < StandardError; end
    rescue_from ActionController::ParameterMissing, with: :parameter_missing
    rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :handle_record_invalid
    rescue_from AuthenticationError, with: :handle_unauthenticated
    # rescue_from ExceptionHandler::AuthenticationError, with: :unauthorized_request
    # rescue_from ExceptionHandler::MissingToken, with: :four_twenty_two
    # rescue_from ExceptionHandler::InvalidToken, with: :four_twenty_two

    #     def auth_header(request)
    #     # { Authorization: 'Bearer <token>' }
    #     request.headers['Authorization']
    # end
    
    #   def decoded_token(request)
    #     if self.auth_header(request)
    #       # token = self.auth_header.split(' ')[1]
    #       token = request.headers.split(' ')[1]
    #       # header: { 'Authorization': 'Bearer <token>' }
    #       begin
    #         JWT.decode(token, HMAC_SECRET, true, algorithm: 'HS256')
    #       rescue JWT::DecodeError
    #         nil
    #       end
    #     else
    #       raise(ExceptionHandler::AuthenticationError, Message.unauthorized)
    #       # {message: "hello"}
    #     end
    #   end


    private

    def parameter_missing(e)
        json_response({ error: e.message  }, :unprocessable_entity)
    end

    def handle_unauthenticated
        head :unauthorized
    end

    def handle_record_not_found
        head :not_found
    end

    def handle_record_invalid(e)
        json_response({error: e.message}, :internal_server_error)
    end

    # JSON response with message; Status code 422 - unprocessable entity
    def four_twenty_two(e)
        json_response({ message: e.message }, :unprocessable_entity)
    end
        
    # JSON response with message; Status code 401 - Unauthorized
    def unauthorized_request(e)
        json_response({ message: e.message }, :unauthorized)
    end

    def authenticate_user
        @decoded_token = AuthenticationTokenService.decoded_token(request)
    end
end
