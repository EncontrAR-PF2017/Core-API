require 'sidekiq-scheduler'

class ExpireCampaignWorker
  include Sidekiq::Worker

  def perform
    campaigns = Campaign.where(status: 'actived')
    campaigns.select{ |c| c.expire_date.present? }.each do |campaign|
    	if campaign.expire_date < Date.current()
    		campaign.status = 'expired'
    		campaign.save
    		puts "The campaign #{campaign.id} has expired"
    	end
    end
  end
end