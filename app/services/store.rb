class Store
  def self.fetch_by_zip(zip)
    stores = BestbuyService.fetch_by_zip(zip)
  end
end
