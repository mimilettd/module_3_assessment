require 'rails_helper'

describe BestbuyService do
  it ".fetch_by_zip(zip)" do
    raw_stores = BestbuyService.fetch_by_zip("80202")

    expect(raw_stores.count).to eq(17)
  end
end
