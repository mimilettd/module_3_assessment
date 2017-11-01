class SearchController < ApplicationController
  def index
    zip = params["search"]
    @stores = Store.fetch_by_zip(zip)
  end
end
