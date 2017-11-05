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

		def top_zones
			render json: Zone
				.select("zones.id, zones.label, COUNT(DISTINCT campaigns.id)")
				.joins("INNER JOIN alerts ON alerts.zone_id = zones.id 
					INNER JOIN campaigns ON campaigns.id = alerts.campaign_id")
				.where("campaigns.created_at BETWEEN ? AND ?", params[:from], params[:to])
				.group("zones.id")
				.having("COUNT(DISTINCT campaigns.id) > 1")
				.order("COUNT(DISTINCT campaigns.id) DESC")
				.limit(10)
		end
	end
end