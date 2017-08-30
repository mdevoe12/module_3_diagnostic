class Station


  def self.find_by_zip(zip)
    @conn = Faraday.new(url: 'https://api.data.gov')

    # @conn = Faraday.new(url: 'https://api.data.gov/nrel/alt-fuel-stations/v1.json') do |faraday|
    #   faraday.headers["X-API-KEY"] = "ffvu6ZpDohHmr1ZgvrlGeS6n3lEBOIMDnQzQAABi"
    #   faraday.adapter Faraday.default_adapter
    # end

    # @conn.get("/api/alt-fuel-stations/v1/nearest.json?#{zip}")
    binding.pry
  end

end
