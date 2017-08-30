class Station


  def self.find_by_zip(zip)
    @conn = Faraday.new(url: 'https://api.data.gov') do |faraday|
      faraday.headers 'X-Api-Key: ffvu6ZpDohHmr1ZgvrlGeS6n3lEBOIMDnQzQAABi'
      faraday.adapater Faraday.default_adapter
    end
    binding.pry
  end

end
