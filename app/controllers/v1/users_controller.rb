module V1
	class User < BaseController

		def show
 			render :json => '{foo: "bar"}'
		end

	end
end
