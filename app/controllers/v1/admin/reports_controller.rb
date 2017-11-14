module V1::Admin
	class ReportsController < V1::AdminController
		include Wor::Paginate

		def campaign_status
			logs = CampaignLog.where('created_at > ? AND created_at < ? AND new_status = ?',
			 	params[:from], params[:to], params[:status])
			render_paginated logs, each_serializer: CampaignLogSerializer
		end

		def alert_views
			render json: Alert.where("created_at BETWEEN ? AND ?", params[:from], params[:to]),
				each_serializer: AlertViewSerializer,
				scope: { 'from': params[:from], 'to': params[:to] }
		end

		def finder_reports
			zones = Zone
				.select("zones.id AS id, zones.label AS label, COUNT(*) AS reports")
				.joins("INNER JOIN finder_reports ON zones.id = finder_reports.zone_id")
				.where("finder_reports.created_at BETWEEN ? AND ?", params[:from], params[:to])
				.group("zones.id")
				.order("COUNT(*) DESC")

			render json: zones
		end

		def top_zones
			zones = Zone
				.select("zones.id, zones.label, COUNT(DISTINCT campaigns.id)")
				.joins("INNER JOIN alerts ON alerts.zone_id = zones.id
					INNER JOIN campaigns ON campaigns.id = alerts.campaign_id")
				.where("alerts.created_at BETWEEN ? AND ?", params[:from], params[:to])
				.group("zones.id")
				.order("COUNT(DISTINCT campaigns.id) DESC")
				.limit(10)

			render json: zones
		end
	end
end
