class ChatHistorialGetEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(channel, conversation_id)
  	conversation = Conversation.find_by_id(conversation_id)

    ActionCable
      .server
      .broadcast(channel, {type: 'historial', data: conversation.messages, finder: PublicFinderSerializer.new(conversation.finder) })
  end
end