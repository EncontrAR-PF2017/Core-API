module V1
	class CampaignsController < BaseController

		def create
			campaign = Campaign.new(register_params)
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

		private
		def register_params
			params.permit(:title, :description, :user_id)
		end
	end
end