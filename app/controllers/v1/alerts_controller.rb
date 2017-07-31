module V1
	class AlertsController < BaseController

		def create
			alert = Alert.new(register_params)
			return render status: :bad_request unless alert.save
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

		private
		def register_params
			params.permit(:title, :campaign_id)
		end

	end
end