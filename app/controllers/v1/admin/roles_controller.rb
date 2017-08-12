module V1::Admin
	class RolesController < V1::BaseController

		def create
			role = Role.new(register_params)
			return render status: :bad_request unless role.save
			render json: role, status: :created
		end

		def show
 			role = Role.find(params[:id])
 			render json: role
		end

		def update
 			role = Role.find(params[:id])
 			role.update(register_params)
 			head :ok
		end

		def destroy
			role = Role.find(params[:id])
			role.destroy
			head :ok
		end

		def get_privileges
			role = Role.find(params[:id])
			render json: role.privileges unless role.privileges.empty?
		end

		def add_privilege
			role = Role.find(params[:id])
			privilege = Privilege.find(params[:privilege_id])
			role.privileges << privilege unless role.privileges.include? privilege
			head :created
		end

		def remove_privilege
			role = Role.find(params[:id])
			privilege = Privilege.find(params[:privilege_id])
			role.privileges.delete(privilege)
			head :ok
		end

		private
		def register_params
			params.permit(:name)
		end
	end
end
