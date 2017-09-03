module V1
	class CampaignsController < PublicController
		include Wor::Paginate

		def show
 			campaign = Campaign.find(params[:id])
 			render json: campaign
		end

		def index_all
 			render_paginated Campaign
		end
	end
end