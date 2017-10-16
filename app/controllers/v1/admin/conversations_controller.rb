module V1::Admin
	class ConversationsController < V1::AdminController
		include Wor::Paginate

		def index_all
			render_paginated Conversation, each_serializer: PrivateConversationSerializer
		end

	end
end