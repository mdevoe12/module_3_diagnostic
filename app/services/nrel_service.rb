class NrelService

  def initialize
    @conn = Faraday.new(url: 'https://api.data.gov')
  end

  def get_url(params)
    response = @conn.get("/nrel/alt-fuel-stations/v1/nearest.json?location=#{params}&radius=6.0&limit=10&api_key=#{ENV['nrel_key']}")
    JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  end

  def self.find(params)
    new.get_url(params)
  end

end
