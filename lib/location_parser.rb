require 'ostruct'

class LocationParser
  def initialize(location_string)
    @location_string = location_string
  end

  def parse
    location = OpenStruct.new

    if @location_string.include?(',')
      location.city, location.state = @location_string.split(",").map(&:strip)
    else
      city_state_regex = /(\w+(?:\s*\w+))+\s(\w{2})$/
      location.city, location.state = city_state_regex.match(@location_string)[1..2]
    end
    location
  end
end
