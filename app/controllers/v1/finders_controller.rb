module V1
	class FindersController < PublicController
		skip_before_action :validate_token?, only: [:create]

		def create
			finder = Finder.where(device_id: params['device_id']).first_or_create!(register_params)
			finder.auth_token = generate_token(finder.id)
			finder.save
			render json: finder, status: :created
		end

		def me
			render json: @finder, serializer: PublicFinderSerializer
		end

		def edit
 			@finder.update(update_params)
 			head :ok
		end

		def update_pos
 			@finder.update(lat_long_params)
 			head :ok
		end

		private
		def register_params
			params.permit(:device_id, :os)
		end

		def update_params
			params.permit(:email, :name, :lastname, :alert_type)
		end

		def lat_long_params
			params.permit(:latitude, :longitude)
		end
	end
end