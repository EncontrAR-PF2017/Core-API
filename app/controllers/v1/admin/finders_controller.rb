module V1::Admin
	class FindersController < V1::AdminController
		include Wor::Paginate

		skip_before_action :validate_token?, only: [:send_message]

		def show
 			finder = Finder.find(params[:id])
 			render json: finder
		end

		def update
 			finder = Finder.find(params[:id])
 			finder.update(primary_update_params)
 			head :ok
		end

		def destroy
			finder = Finder.find(params[:id])
			finder.destroy
			head :ok
		end

		def index_all
 			render_paginated Finder
		end

		def send_message
			finder = Finder.find(params[:id])
			return :bad_request if finder.nil?
			SendSnsNotificationWorker.perform_async(finder.id, params[:message])
			head :ok
		end

		private
		def update_params
			params.permit(:email, :name, :lastname, :device_id, :os, :alert_type, :dni, :latitude, :longitude)
		end
	end
end