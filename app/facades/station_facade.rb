class StationFacade
    def self.nearest_station(location)
        data = StationService.nearest_station(location)
        Station.new(data)
    end
end