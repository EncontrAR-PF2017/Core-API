module V1::Admin
	class MissingPersonsController < V1::BaseController
		include Wor::Paginate

		def create
			person = MissingPerson.new(register_params)
			return render status: :bad_request unless person.save
			render json: person, status: :created
		end

		def show
 			person = MissingPerson.find(params[:id])
 			render json: person
		end

		def update
 			person = MissingPerson.find(params[:id])
 			person.update(register_params)
 			head :ok
		end

		def destroy
			person = MissingPerson.find(params[:id])
			person.destroy
			head :ok
		end

		def index_all
 			render_paginated MissingPerson
		end

		private
		def register_params
			params.permit(:name, :lastname, :dni, :sex, :age, :photo)
		end
	end
end