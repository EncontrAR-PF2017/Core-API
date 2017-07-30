module V1
	class PrivilegesController < BaseController

		def create
			privilege = Privilege.new(register_params)
			privilege.save
			render json: privilege
		end

		def show
 			privilege = Privilege.find(params[:id])
 			render json: privilege
		end

		def update
 			privilege = Privilege.find(params[:id])
 			privilege.update(register_params)
 			head :ok
		end

		def destroy
			privilege = Privilege.find(params[:id])
			privilege.destroy
			head :ok
		end

		private
		def register_params
			params.permit(:key)
		end
	end
end