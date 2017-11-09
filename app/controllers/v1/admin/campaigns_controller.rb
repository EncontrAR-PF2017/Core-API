module V1::Admin
	class CampaignsController < V1::AdminController
		include Wor::Paginate

		MSG_CAMPAIGN_EXISTS = {
			errorCode: 101,
			message: 'There is an active campaign for the same person'
		}

		MSG_PERSON_NOT_EXISTS = {
			errorCode: 102,
			message: 'The missing person doesn\'t exist'
		} 

		def create
			return render status: :bad_request, json: MSG_CAMPAIGN_EXISTS if campaign_already_exists?
			return render status: :bad_request, json: MSG_PERSON_NOT_EXISTS if missing_person_exists?

			campaign = Campaign.new(register_params)
			campaign.user_id = @user.id
			return render status: :bad_request unless campaign.save
			render json: campaign, status: :created
		end

		def show
 			campaign = Campaign.find(params[:id])
 			render json: campaign, serializer: PrivateCampaignSerializer
		end

		def update
 			campaign = Campaign.find(params[:id])
 			campaign.update(update_params)
 			head :ok
		end

		def destroy
			campaign = Campaign.find(params[:id])
			campaign.destroy
			head :ok
		end

		def index_all
 			render_paginated Campaign.order("updated_at DESC"), each_serializer: PrivateCampaignSerializer
		end

		def get_owner
			campaign = Campaign.find(params[:id])
			render json: campaign.user
		end

		def images
			campaign = Campaign.find(params[:id])
			return render head: :bad_request unless campaign.present?
			render json: campaign.campaign_images unless campaign.nil?
		end

		def add_image
			campaign = Campaign.find(params[:id])
			image = CampaignImage.create(url: params[:url])
			campaign.campaign_images << image
			return render status: :bad_request unless campaign.save
			render json: image
		end

		def delete_image
			image = CampaignImage.where(campaign_id: params[:id], id: params[:image_id])
			CampaignImage.destroy(params[:image_id]) unless image.nil?
			head :ok
		end

		def conversations
			campaign = Campaign.find(params[:id])
			return render status: :bad_request unless campaign.present?
			render_paginated campaign.conversations.order("updated_at DESC"), each_serializer: PrivateConversationSerializer
		end

		private
		def register_params
			params.permit(:title, :description, :missing_person_id, :expire_date)
		end

		def update_params
			params.permit(:title, :description, :missing_person_id, :status, :expire_date)
		end

		def campaign_already_exists?
			Campaign.where(missing_person_id: params[:missing_person_id], 
				status: Campaign.statuses[:actived]).present?
		end

		def missing_person_exists?
			MissingPerson.find_by_id(params[:missing_person_id]).nil?
		end
	end
end