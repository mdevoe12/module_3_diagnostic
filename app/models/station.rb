class Station

  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times

  def initialize(station_info)
    @name = station_info[:station_name]
    @address = station_info[:street_address]
    @fuel_types = station_info[:fuel_type_code]
    @distance = station_info[:distance]
    @access_times = station_info[:access_days_time]
  end


  def self.find(params)
    NrelService.find(params).map do |raw_stations|
      Station.new(raw_stations)
    end
  end

end
