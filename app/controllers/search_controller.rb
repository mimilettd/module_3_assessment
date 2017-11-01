require 'will_paginate/array'

class SearchController < ApplicationController
  def index
    zip = params["search"]
    @store_collection = Store.fetch_by_zip(zip)
    #@stores = all_stores.paginate(:page => params[:page], :per_page => 10)
    @stores = @store_collection.paginate(page: params[:page], per_page: 10)
  end
end
