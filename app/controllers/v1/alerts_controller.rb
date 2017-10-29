module V1
	class AlertsController < PublicController

		def view
			View.find_or_create_by(alert_id: params[:id], finder_id: @finder.id)
			head :ok
		end
	end
end