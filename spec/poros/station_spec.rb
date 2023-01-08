require 'rails_helper'

describe 'station' do
    it 'exists' do
        station = StationFacade.nearest_station('5224 W 25th Ave, Denver, CO 80214')

        expect(station).to be_a(Station)
        expect(station.full_address).to eq('1985 Sheridan Blvd, Edgewater CO 80214')
    end
end