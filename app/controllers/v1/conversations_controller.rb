module V1
	class ConversationsController < PublicController

		def create
			campaign = Campaign.find_by_id(params['campaign_id']) unless params['campaign_id'].nil?
			return render status: :bad_request unless campaign.present?

			conversation = Conversation.where(campaign_id: campaign.id, finder_id: @finder.id).first

			if (conversation.nil?)
				conversation = Conversation.create(campaign_id: campaign.id, finder_id: @finder.id)
				conversation.save
			end

			render json: conversation, status: :created
		end

		private
		def register_params
			params.permit(:campaign_id)
		end
	end
end