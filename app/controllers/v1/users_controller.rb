module V1
	class UsersController < BaseController
		before_action only: [:create, :show, :update, :destroy]

		def create
			user = User.new(register_params)
			user.save
			render json: user
		end

		def show
 			user = User.find(params[:id])
 			render json: user
		end

		def update
 			user = User.find(params[:id])
 			user.update(register_params)
 			head :ok
		end

		def destroy
			user = User.find(params[:id])
			user.destroy
			head :ok
		end

		private
		def register_params
			params.permit(:email, :name, :lastname)
		end

	end
end
