module V1
	class BaseController < ActionController::Base
		require 'jwt'

		before_action :validate_token?

		HMAC_SECRET = 'my$ecretK3y'

	    ##rescue_from Exception do |exception|
	    ##  ExceptionHandler.new(exception, self).handle
	    ##end

	    def generate_token(data, expire_hours = 35040) ## 4 years by default
			exp = Time.now.to_i + expire_hours * 3600 ## in seconds
			exp_payload = { :data => data, :exp => exp }

			token = JWT.encode exp_payload, HMAC_SECRET, 'HS256'
	    end

	    def decode_token(token)
		  	decoded_token = JWT.decode token, HMAC_SECRET, true, { :algorithm => 'HS256' }
	    end

	    def validate_token?
	    	begin
	    		@decoded_token = decode_token(request.headers["X-Auth-Token"])
	    		validate_entity?
    		rescue
    			head :unauthorized
    		end
	    end

	    def validate_entity?
	    end

	end
end