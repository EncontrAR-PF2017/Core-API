require 'sidekiq-scheduler'

class ExpireCampaignWorker
  include Sidekiq::Worker

  def perform
    puts 'Hello world'
  end
end