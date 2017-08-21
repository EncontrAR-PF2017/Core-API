module V1::Admin
	class AlertsController < V1::AdminController
		include Wor::Paginate

		def create
			alert = Alert.new(register_params)
			return render status: :bad_request unless alert.save
			SendAlertWorker.perform_async(alert.id, params[:message])
			render json: alert, status: :created
		end

		def show
 			alert = Alert.find(params[:id])
 			render json: alert
		end

		def update
 			alert = Alert.find(params[:id])
 			alert.update(register_params)
 			head :ok
		end

		def destroy
			alert = Alert.find(params[:id])
			alert.destroy
			head :ok
		end

		def index_for_campaign
			render_paginated Alert.where(campaign_id: params[:campaign_id])
		end

		private
		def register_params
			params.permit(:title, :campaign_id, :zone_id)
		end

	end
end