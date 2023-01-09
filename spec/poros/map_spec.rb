require 'rails_helper'

describe 'map' do
    it 'exists' do
        map = MapFacade.directions('5224 W 25th Ave, Denver, CO 80214', '1985 Sheridan Blvd, Edgewater CO 80214')
        expected_instructions = [[  "Head east on W 25th Ave. Go for 246 ft.", 
                                    "Turn right onto Sheridan Blvd (CO-95). Go for 0.4 mi.",
                                    "Arrive at Sheridan Blvd (CO-95). Your destination is on the right."]]
        expect(map).to be_a(Map)
        expect(map.distance).to eq(0.4176)
        expect(map.travel_time).to eq('00:01:03')
        expect(map.instructions).to eq(expected_instructions)
    end
end