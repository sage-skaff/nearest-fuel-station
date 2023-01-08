require 'rails_helper'

describe 'station service' do
    it 'connects to nrel api to find nearest station' do
        nearest_station = StationService.nearest_station('5224 W 25th Ave, Denver, CO 80214')
        expect(nearest_station).to be_a(Hash)
    end
end