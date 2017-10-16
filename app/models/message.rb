class Message < ApplicationRecord
	belongs_to :conversation

	after_create_commit do
    ChatMessageCreationEventBroadcastJob.perform_later(self)
  end
end
