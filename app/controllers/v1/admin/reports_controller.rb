module V1::Admin
	class ReportsController < V1::AdminController
		include Wor::Paginate

		def campaign_status
			logs = CampaignLog.where('created_at > ? AND created_at < ? AND new_status = ?', 
			 	params[:from], params[:to], params[:status])
			render_paginated logs, each_serializer: CampaignLogSerializer
		end

		def alert_views
			views = View.where('created_at > ? AND created_at < ?', params[:from], params[:to])
				.group("alert_id")
				.count()

			render_paginated views
		end
	end
end