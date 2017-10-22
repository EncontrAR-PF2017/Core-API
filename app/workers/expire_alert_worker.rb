require 'sidekiq-scheduler'

class ExpireAlertWorker
  include Sidekiq::Worker

  def perform
    alerts = Alert.where(status: 'enabled')
    alerts.select{ |a| a.expire_date.present? }.each do |alert|
    	if alert.expire_date < Date.current()
    		alert.status = 'expired'
    		alert.save
    		puts "The alert #{alert.id} has expired"
    	end
    end
  end
end