module V1
	class CampaignsController < PublicController
		include Wor::Paginate

		def show
 			campaign = Campaign.find(params[:id])
 			render json: campaign, serializer: CampaignSerializer
		end

		def index_all
 			render_paginated Campaign, each_serializer: CampaignSerializer
		end
	end
end