module V1::Admin
	class FindersController < V1::BaseController

		def show
 			finder = Finder.find(params[:id])
 			render json: finder
		end

		def update
 			finder = Finder.find(params[:id])
 			finder.update(primary_update_params)
 			head :ok
		end

		def destroy
			finder = Finder.find(params[:id])
			finder.destroy
			head :ok
		end

		def add_device_token
			finder = Finder.find(params[:id])
			return :bad_request if finder.nil?
			Wor::Push::Notifications::Aws.add_token(finder, params[:device_token], params[:device_type])
			head :ok
		end

		def send_message
			finder = Finder.find(params[:id])
			return :bad_request if finder.nil?
			message_content = { message: params[:message]}
			Wor::Push::Notifications::Aws.send_message(finder, message_content)
			head :ok
		end

		private
		def update_params
			params.permit(:email, :name, :lastname, :device_id, :os, :alert_type, :latitude, :longitude)
		end
	end
end