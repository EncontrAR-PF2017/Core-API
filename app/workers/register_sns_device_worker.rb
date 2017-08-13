class RegisterSnsDeviceWorker
  	include Sidekiq::Worker

	def perform(finder)
		puts 'Running worker'
		Wor::Push::Notifications::Aws.add_token(finder, finder.device_id, finder.os)
	end
end
