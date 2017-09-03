module GeoSearchHelper
	module_function

	def search_finders_by_zone(zone)
		finders = Finder.in_bounds([[zone.south_west_lat, zone.south_west_long], 
			[zone.north_east_lat, zone.north_east_long]])
	end

	def search_alerts_by_finder(finder)
		zones = search_zones_by_finder(finder).map { |element| element.id }
		alerts = Alert.where('status = 0 AND zone_id IN (?)', zones)
		alerts - finder.alerts
	end

	def search_zones_by_finder(finder)
		zones = Zone.where("south_west_lat <= ? AND north_east_lat >= ? AND north_east_long >= ? AND south_west_long <= ?", 
			finder.latitude, finder.latitude, finder.longitude, finder.longitude)
	end
end