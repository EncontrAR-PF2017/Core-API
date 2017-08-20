module V1
	class AdminController < BaseController

		def validate_entity?
			@user = User.find(@decoded_token.first['data'])
			return @user.auth_token == @token if @user.present?
			false
	    end

	end
end