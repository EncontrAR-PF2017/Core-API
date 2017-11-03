class AlertViewSerializer < ActiveModel::Serializer
	attributes :id, :title, :notifications_sent, :created_at, :views
	has_one :campaign

	def views
    View.where('alert_id = ? AND created_at > ? AND created_at < ?', 
    	object.id, 
    	scope[:from], 
    	scope[:to]).count()
  end
end