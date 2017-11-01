require 'rails_helper'

describe "Items API" do
  context "Items Endpoint" do
    it "can send a list of items" do
      item = create_list(:item, 3).first

      get "/api/v1/items"

      expect(response).to be_success

      items = JSON.parse(response.body)

      expect(items.count).to eq(3)
    end

    it "can send an item" do
      item = create(:item)

      get "/api/v1/items/#{item.id}"

      expect(response).to be_success

      object = JSON.parse(response.body)

      expect(object["name"]).to eq(item.name)
      expect(object["description"]).to eq(item.description)
      expect(object["image_url"]).to eq(item.image_url)
    end

    it "can delete an item" do
      item = create(:item)

      delete "/api/v1/items/#{item.id}"

      expect(response.status).to eq(404)

      expect(JSON.parse(response.body)["error"]).to eq("not-found")
    end
  end
end
