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
			render json: Zone.all, 
				each_serializer: FinderReportSerializer, 
				scope: { 'from': params[:from], 'to': params[:to] }
		end
	end
end