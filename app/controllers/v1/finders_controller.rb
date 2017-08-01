module V1
	class FindersController < BaseController

		def create
			finder = Finder.new(register_params)
			return render status: :bad_request unless finder.save
			render json: finder, status: :created
		end

		def show
 			finder = Finder.find(params[:id])
 			render json: finder
		end

		def update
 			finder = Finder.find(params[:id])
 			finder.update(primary_update_params)
 			head :ok
		end

		def update_pos
 			finder = Finder.find(params[:id])
 			finder.update(lat_long_params)
 			head :ok
		end

		def destroy
			finder = Finder.find(params[:id])
			finder.destroy
			head :ok
		end

		private
		def register_params
			params.permit(:email, :name, :lastname)
		end

		def primary_update_params
			params.permit(:email, :name, :lastname, :device_id, :os, :alert_type)
		end

		def lat_long_params
			params.permit(:latitude, :longitude)
		end
	end
end