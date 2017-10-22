require 'sidekiq-scheduler'

class ExpireAlertWorker
  include Sidekiq::Worker

  def perform
    puts 'Hello world'
  end
end