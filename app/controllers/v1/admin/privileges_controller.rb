module V1::Admin
	class PrivilegesController < V1::BaseController

		def create
			privilege = Privilege.new(register_params)
			return render status: :bad_request unless privilege.save
			render json: privilege, status: :created
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