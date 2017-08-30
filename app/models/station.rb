class Station

  def initialize(station_info)
    binding.pry
  end


  def self.find_by_zip(zip)
    @conn = Faraday.new(url: 'https://api.data.gov')

    response = @conn.get("/nrel/alt-fuel-stations/v1/nearest.json?location=80202&limit=10&api_key=ffvu6ZpDohHmr1ZgvrlGeS6n3lEBOIMDnQzQAABi")

    result = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]

    result.map do |raw_stations|
      Station.new(raw_stations)
    end
  end

end
