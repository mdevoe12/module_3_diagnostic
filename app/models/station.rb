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
    @conn = Faraday.new(url: 'https://api.data.gov')

    response = @conn.get("/nrel/alt-fuel-stations/v1/nearest.json?location=#{params}&limit=10&api_key=ffvu6ZpDohHmr1ZgvrlGeS6n3lEBOIMDnQzQAABi")

    result = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]

    result.map do |raw_stations|
      Station.new(raw_stations)
    end
  end

end
