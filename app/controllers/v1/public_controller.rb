module V1
	class PublicController < BaseController

		def validate_entity?
			@finder = Finder.find(@decoded_token.first['data'])
			return @finder.auth_token == @token if @finder.present?
			false
	    end

	end
end