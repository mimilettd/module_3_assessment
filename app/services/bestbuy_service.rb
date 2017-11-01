class BestbuyService
  def fetch_by_zip(zip)
    #https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=all&pageSize=10&apiKey=7a3heu7emrjz6qbsugmepbv6
  end

  def self.fetch_by_zip(zip)
    new.fetch_by_zip(zip)
  end
end
