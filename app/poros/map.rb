class Map
    attr_reader :travel_time,
                :distance,
                :instructions

    def initialize(data)
        @travel_time = data[:route][:formattedTime]
        @distance = data[:route][:distance]
        @instructions = data[:route][:legs].map {|l| l[:maneuvers].map {|m| m[:narrative]}}
    end
end