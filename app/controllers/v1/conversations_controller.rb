module V1
	class ConversationsController < PublicController
		include GeoSearchHelper

		def create
			campaign = Campaign.find_by_id(params['campaign_id']) unless params['campaign_id'].nil?
			return render status: :bad_request unless campaign.present?

			conversation = Conversation.where(campaign_id: campaign.id, finder_id: @finder.id).first

			if (conversation.nil?)
				conversation = Conversation.create(campaign_id: campaign.id, finder_id: @finder.id)
				conversation.save
				save_zones_report
			end

			render json: conversation, status: :created
		end

		private
		def register_params
			params.permit(:campaign_id)
		end

		def save_zones_report
			zones = GeoSearchHelper.search_zones_by_finder(@finder)
			if (zones.any?)
				zones.each { |zone| FinderReport.find_or_create_by(finder: @finder, zone: zone) }
			end
		end
	end
end