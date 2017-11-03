module V1::Admin
	class ReportsController < V1::AdminController
		include Wor::Paginate

		def campaign_status
			logs = CampaignLog.where('created_at > ? AND created_at < ? AND new_status = ?', 
			 	params[:from], params[:to], params[:status])
			render_paginated logs, each_serializer: CampaignLogSerializer
		end

		def alert_views
			render json: Alert.all, 
				each_serializer: AlertViewSerializer, 
				scope: { 'from': params[:from], 'to': params[:to] }
		end

		def finder_reports
			FinderReport.where('created_at > ? AND created_at < ?', params[:from], params[:to])
				.group("zone_id")
				.count()
		end
	end
end