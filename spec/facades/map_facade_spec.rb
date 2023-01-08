require 'rails_helper'

describe 'map facade' do
    it 'creates map objects from map service data' do
        map = MapFacade.directions('5224 W 25th Ave, Denver, CO 80214', '1985 Sheridan Blvd, Edgewater CO 80214')
        expect(map).to be_a(Map)
    end
end