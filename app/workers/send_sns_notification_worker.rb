class SendSnsNotificationWorker
  	include Sidekiq::Worker

	def perform(finder_id, message_content)
		finder = Finder.find_by_id(finder_id)
		message_content = { message: message_content }
		Wor::Push::Notifications::Aws.send_message(finder, message_content) unless finder.nil?
	end
end
