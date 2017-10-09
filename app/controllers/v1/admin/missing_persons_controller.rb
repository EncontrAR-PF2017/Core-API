module V1::Admin
	class MissingPersonsController < V1::AdminController
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

		## https://www.justinweiss.com/articles/search-and-filter-rails-models-without-bloating-your-controller/
		def search_by
		  list = MissingPerson.where(nil)
		  filtering_params(params).each do |key, value|
		    list = list.public_send(key, value) if value.present?
		  end
		  render json: list
		end

		def index_all
 			render_paginated MissingPerson
		end

		private
		def register_params
			params.permit(:name, :lastname, :dni, :sex, :age, :photo)
		end

		def filtering_params(params)
		  params.slice(:dni)
		end
	end
end