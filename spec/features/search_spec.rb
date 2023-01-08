require 'rails_helper'

describe 'search results page' do
    before :each do
        visit '/'
        select 'Griffin Coffee', from: :location
        click_button 'Find Nearest Station'
    end

    describe 'displays' do
        it 'station name, address, fuel type, and access times' do
            expect(page).to have_content('Target T2225')
            expect(page).to have_content('1985 Sheridan Blvd, Edgewater CO 80214')
            expect(page).to have_content('ELEC')
            expect(page).to have_content('24 hours daily')
        end

        it 'distance and travel time to nearest station' do
            expect(page).to have_content('0.4176')
            expect(page).to have_content('00:01:03')
        end

        it 'directions to nearest station' do
            expect(page).to have_content("Head east on W 25th Ave. Go for 246 ft.")
            expect(page).to have_content("Turn right onto Sheridan Blvd (CO-95).") 
            expect(page).to have_content("Arrive at Sheridan Blvd (CO-95). Your destination is on the right.")
        end
    end
end