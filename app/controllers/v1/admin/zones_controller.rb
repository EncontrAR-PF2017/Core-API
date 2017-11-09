module V1::Admin
	class ZonesController < V1::AdminController
		include Wor::Paginate

		def create
			zone = Zone.new(register_params)
			return render status: :bad_request unless zone.save
			render json: zone, status: :created
		end

		def show
 			zone = Zone.find(params[:id])
 			render json: zone
		end

		def update
 			zone = Zone.find(params[:id])
 			zone.update(register_params)
 			head :ok
		end

		def destroy
			zone = Zone.find(params[:id])
			zone.destroy
			head :ok
		end

		def index_all
 			render_paginated Zone.order("updated_at DESC")
		end

		def search_by
		  list = Zone.where(nil)
		  filtering_params(params).each do |key, value|
		    list = list.public_send(key, value) if value.present?
		  end
		  render json: list
		end

		private
		def register_params
			params.permit(:label, :south_west_lat, :south_west_long, :north_east_lat, :north_east_long)
		end

		def filtering_params(params)
		  params.slice(:label)
		end

	end
end