module V1::Admin
	class ConversationsController < V1::AdminController
		include Wor::Paginate

		def index_all
			render_paginated Conversation.order("updated_at DESC"), each_serializer: PrivateConversationSerializer
		end

	end
end