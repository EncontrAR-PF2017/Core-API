class SendAlertWorker
  	include Sidekiq::Worker

	def perform(alert_id, message_content)
		alert = Alert.find_by_id(alert_id)
		return unless alert.present?

		finders = Finder.all ## Replace for zone filter
		message_content = { message: message_content }
		finders.each do |finder| 
			Wor::Push::Notifications::Aws.send_message(finder, message_content)
		end

		alert.notifications_sent = finders.count
		alert.save
	end
end
