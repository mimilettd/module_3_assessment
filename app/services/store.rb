class Store
  attr_reader :longname, :city, :distance, :phone, :type
  def initialize(attrs = {})
    @longname = attrs["longName"]
    @city = attrs["city"]
    @distance = attrs["distance"]
    @phone = attrs["phone"]
    @type = attrs["storeType"]
  end

  def self.fetch_by_zip(zip)
    stores = BestbuyService.fetch_by_zip(zip)
    stores.map do |store|
      Store.new(store)
    end
  end
end
