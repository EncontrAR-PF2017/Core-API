module V1::Admin
	class UsersController < V1::BaseController
		skip_before_action :validate_token?, only: [:create]

		def create
			user = User.new(register_params)
			user.password = params[:password]
			return render status: :bad_request unless user.save
			render json: user, status: :created
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

		def validate_entity?
			raise Exception unless @decoded_token.first['data'] == params[:id]
		end

		private
		def register_params
			params.permit(:email, :name, :lastname)
		end

	end
end
