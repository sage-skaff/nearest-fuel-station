require 'rails_helper'

describe 'station facade' do
    it 'creates station objects from station service data' do
        station = StationFacade.directions('5224 W 25th Ave, Denver, CO 80214')
        expect(station).to be_a(Station)
    end
end