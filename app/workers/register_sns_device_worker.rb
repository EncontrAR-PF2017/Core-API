class RegisterSnsDeviceWorker
  	include Sidekiq::Worker

	def perform(finder_id)
		puts 'Running worker'
		finder = Finder.find_by_id(finder_id)
		Wor::Push::Notifications::Aws.add_token(finder, finder.device_id, finder.os) unless finder.nil?
	end
end
