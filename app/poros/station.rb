class Station
    attr_reader :city,
                :state,
                :street_address,
                :zip,
                :full_address,
                :fuel_type,
                :access_times,
                :name

    def initialize(data)
        @city = data[:fuel_stations][0][:city]
        @state = data[:fuel_stations][0][:state]
        @street_address = data[:fuel_stations][0][:street_address]
        @zip = data[:fuel_stations][0][:zip]
        @full_address = full_address
        @fuel_type = data[:fuel_stations][0][:fuel_type_code]
        @access_times = data[:fuel_stations][0][:access_days_time]
        @name = data[:fuel_stations][0][:station_name]
    end

    def full_address
        "#{@street_address} #{@city} #{@state} #{@zip}"
    end
end