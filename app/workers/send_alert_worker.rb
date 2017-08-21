class SendAlertWorker
  	include Sidekiq::Worker
  	include GeoSearchHelper

	def perform(alert_id, message_content)
		alert = Alert.find_by_id(alert_id)
		return unless alert.present?

		finders = GeoSearchHelper.search_finders_by_zone(alert.zone)
		message_content = { message: message_content }
		finders.each do |finder| 
			Wor::Push::Notifications::Aws.send_message(finder, message_content)
		end

		alert.notifications_sent = finders.size
		alert.save
	end
end
