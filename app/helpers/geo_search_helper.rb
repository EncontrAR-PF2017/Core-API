module GeoSearchHelper
	module_function

	def search_finders_by_zone(zone)
		finders = Finder.in_bounds([[zone.south_west_lat, zone.south_west_long], 
			[zone.north_east_lat, zone.north_east_long]])
	end
end