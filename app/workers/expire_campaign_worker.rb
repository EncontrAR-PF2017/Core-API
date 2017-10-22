require 'sidekiq-scheduler'

class ExpireCampaignWorker
  include Sidekiq::Worker

  def perform
    campaigns = Campaign.where(status: 'actived')
    campaigns.each do |campaign|
    	if campaign.expire_date < Date.current()
    		campaign.status = 'expired'
    		campaign.save

    		puts 'The campaign ${campaign.title} was expired'
    	end
    end
  end
end