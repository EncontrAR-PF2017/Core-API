module V1
	class UsersController < BaseController
		before_action only: [:create, :show]

		def create
			user = User.new(register_params)
			user.save
			render json: user
		end


		def show
 			user = User.find(params[:id])
 			render json: user
		end

		private
		def register_params
			params.permit(:email, :name, :lastname)
		end

	end
end
