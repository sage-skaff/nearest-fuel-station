require 'rails_helper'

describe 'map service' do
    it 'connects to mapquest to find directions' do
        directions = MapService.find_directions('5224 W 25th Ave, Denver, CO 80214', '1985 Sheridan Blvd, Edgewater CO 80214')
        expect(directions).to be_a(Hash)
    end
end