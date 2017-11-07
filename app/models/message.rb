class Message < ApplicationRecord
	belongs_to :conversation

	after_create_commit do
		self.conversation.updated_at = self.created_at
		self.conversation.save
    ChatMessageCreationEventBroadcastJob.perform_later(self)
  end
end
