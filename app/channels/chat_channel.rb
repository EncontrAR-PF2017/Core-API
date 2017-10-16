class ChatChannel < ApplicationCable::Channel
  def subscribed
    set_entity
    reject if @entity.nil?

    @conversation = Conversation.find_by_id(params[:conversation_id])
    reject if @conversation.nil?

    set_channels(@conversation.id, @entity.id)

    stream_from @channel
    stream_from @specificChannel
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
    ChatHistorialGetEventBroadcastJob.perform_later(@specificChannel, @conversation.id)
  end

 	private
	def conditions_for_user
		params[:user_token].present? && params[:conversation_id].present?
	end

  def conditions_for_finder
    params[:finder_token].present? && params[:conversation_id].present?
  end

  def set_entity
    if (conditions_for_user)
      @entity = User.find_by(auth_token: params[:user_token])
      @type = 'user'
    elsif (conditions_for_finder)
      @entity = Finder.find_by(auth_token: params[:finder_token])
      @type = 'finder'
    end
  end

  def set_channels(conversation_id, entity_id)
    @channel = "conversation#{conversation_id}"

    if (@type == 'user')
      @specificChannel = "conversation#{conversation_id}_user#{entity_id}"
    else
      @specificChannel = "conversation#{conversation_id}_finder#{entity_id}"
    end
  end
end