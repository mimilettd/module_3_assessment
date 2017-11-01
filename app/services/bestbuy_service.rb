class BestbuyService
  def initialize
    @conn = Faraday.new(:url => 'https://api.bestbuy.com') do |faraday|
    faraday.adapter  Faraday.default_adapter
  end

  end
  def fetch_by_zip(zip)
    response = conn.get("/v1/stores(area(#{zip},25))?format=json&show=all&pageSize=100&apiKey=#{ENV['bestbuy_api_key']}")
    JSON.parse(response.body)["stores"]
  end

  def self.fetch_by_zip(zip)
    new.fetch_by_zip(zip)
  end

  private
    attr_reader :conn
end
