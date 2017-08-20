module V1::Admin
	class CampaignsController < V1::AdminController

		MSG_CAMPAIGN_EXISTS = 'There is an active campaign for the same person'
		MSG_PERSON_NOT_EXISTS = 'The missing person doesn\'t exist'

		def create
			return render status: :bad_request, json: { message: MSG_CAMPAIGN_EXISTS } if campaign_already_exists?
			return render status: :bad_request, json: { message: MSG_PERSON_NOT_EXISTS } if missing_person_exists?

			campaign = Campaign.new(register_params)
			campaign.user_id = @user.id
			campaign.missing_person_id = params[:missing_person_id]
			return render status: :bad_request unless campaign.save
			render json: campaign, status: :created
		end

		def show
 			campaign = Campaign.find(params[:id])
 			render json: campaign
		end

		def update
 			campaign = Campaign.find(params[:id])
 			campaign.update(register_params)
 			head :ok
		end

		def destroy
			campaign = Campaign.find(params[:id])
			campaign.destroy
			head :ok
		end

		def get_owner
			campaign = Campaign.find(params[:id])
			render json: campaign.user
		end

		def campaign_already_exists?
			Campaign.where(missing_person_id: params[:missing_person_id], 
				status: Campaign.statuses[:actived]).present?
		end

		def missing_person_exists?
			MissingPerson.find_by_id(params[:missing_person_id]).nil?
		end

		private
		def register_params
			params.permit(:title, :description)
		end
	end
end