class Store
  def self.fetch_by_zip(zip)
    stores = BestbuyService.fetch_by_zip(zip)
    stores.map do |store|
      Store.new(store)
    end
  end
end
