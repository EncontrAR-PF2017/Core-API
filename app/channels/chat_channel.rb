class ChatChannel < ApplicationCable::Channel
  def subscribed
		if (conditions_for_user)
  		entity = User.find_by(auth_token: params[:user_token])
  		reject if entity.nil?

      conversation = Conversation.find_by_id(params[:conversation_id])

      @type = 'user'
      @entity = entity
      @conversation = conversation

  		channel = "conversation#{conversation.id}"
      specificChannel = "conversation#{conversation.id}_user#{entity.id}"
		end

    stream_from channel
    stream_from specificChannel
  end

  def unsubscribed
    logger.info 'Ha habido una desconexion'
  end

  def create(opts)
    Message.create(
      content: opts.fetch('content'), 
      conversation: @conversation,
      sender: @type)
  end

  def historial(opts)
    conversationId = @conversation.id
    entityId = @entity.id

    if (@type == 'user') 
      channel = "conversation#{conversationId}_user#{entityId}"
    else
      channel = "conversation#{conversationId}_finder#{entityId}"
    end

    ChatHistorialGetEventBroadcastJob.perform_later(channel, conversationId)
  end

 	private
	def conditions_for_user
		params[:user_token].present? && params[:conversation_id].present?
	end
end