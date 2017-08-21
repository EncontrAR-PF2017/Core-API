module V1::Admin
	class AlertsController < V1::AdminController

		def create
			alert = Alert.new(register_params)
			return render status: :bad_request unless alert.save
			send_notifications(alert)
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

		def send_notifications(alert)
			SendAlertWorker.perform_async(alert.id, params[:message])
		end

		private
		def register_params
			params.permit(:title, :campaign_id)
		end

	end
end