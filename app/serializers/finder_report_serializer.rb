class FinderReportSerializer < ActiveModel::Serializer
	attributes :id, :label, :reports

	def reports
    FinderReport.where('zone_id = ? AND created_at > ? AND created_at < ?', 
    	object.id, 
    	scope[:from], 
    	scope[:to]).count()
  end
end