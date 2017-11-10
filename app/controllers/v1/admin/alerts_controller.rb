module V1::Admin
	class AlertsController < V1::AdminController
		include Wor::Paginate

		def create
			return render status: :bad_request unless check_create_conditions
			alert = Alert.new(register_params)
			return render status: :bad_request unless alert.save
			SendAlertWorker.perform_async(alert.id, params[:campaign_id])
			render json: alert, status: :created
		end

		def show
 			alert = Alert.find(params[:id])
 			render json: alert, serializer: PrivateAlertSerializer
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
			render_paginated Alert.where(campaign_id: params[:campaign_id]), 
				each_serializer: PrivateAlertSerializer
		end

		private
		def register_params
			params.permit(:title, :campaign_id, :zone_id)
		end

		def check_create_conditions
			params[:title].present? && params[:campaign_id].present? && params[:zone_id].present?
		end

	end
end