class ChatMessageCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
  	conversation = message.conversation

    ActionCable
      .server
      .broadcast("conversation#{conversation.id}", {type: 'new_message', data: message})

    logger.info 'Enviando mensaje'
  end
end