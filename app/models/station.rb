class Station


  def self.find_by_zip(zip)
    @conn = Faraday.new(url: 'https://api.data.gov')

    response = @conn.get("/nrel/alt-fuel-stations/v1/nearest.json?location=80202&limit=10&api_key=ffvu6ZpDohHmr1ZgvrlGeS6n3lEBOIMDnQzQAABi")

    result = JSON.parse(response.body)
    binding.pry
  end

end
