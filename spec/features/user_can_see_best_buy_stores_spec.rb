require 'rails_helper'

feature "User enters zip into search box" do
  scenario "and sees stores within 25 miles of zip" do
    visit "/"

    fill_in "search", with: "80202"

    click_on "Search"

    expect(current_path).to eq("/search")

    expect(page).to have_content("17 Total Stores")
    expect(page).to have_css("store", :count => 10)
    expect(page).to have_css(".longname")
    expect(page).to have_css(".city")
    expect(page).to have_css(".distance")
    expect(page).to have_css(".phone")
    expect(page).to have_css(".type")
  end
end
