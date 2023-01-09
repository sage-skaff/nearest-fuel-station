class SearchController < ApplicationController
    def index
        from = params[:location]
        @station = StationFacade.nearest_station(from)
        to = @station.full_address
        @map = MapFacade.directions(from, to)
    end
end