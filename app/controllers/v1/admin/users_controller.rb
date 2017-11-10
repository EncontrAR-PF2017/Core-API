module V1::Admin
	class UsersController < V1::AdminController
		include Wor::Paginate
		
		skip_before_action :validate_token?, only: [:create, :log_in]

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

		def index_all
 			render_paginated User.order("updated_at DESC")
		end

		def log_in
			user = User.find_by_email(params[:email])

			if user.present? && user.valid_password?(params[:password])
				user.auth_token = generate_token(user.id)
				return render status: :bad_request unless user.save
				render json: user, status: :ok, serializer: UserAuthTokenSerializer
			else
				render status: :unauthorized, json: { message: 'The auth failed. Did you check if the params are right?' }
			end
		end

		def log_out
			@user.auth_token = ''
			return render status: :bad_request unless @user.save
			head :ok
		end

		private
		def register_params
			params.permit(:email, :name, :lastname)
		end

	end
end
