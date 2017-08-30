require 'rails_helper'

RSpec.feature "user sees electric and propane sources" do
  scenario "when they search by zip" do
    # As a user
    # When I visit "/"
    visit root_path

    expect(page).to have_content("AltFuelFinder")

    # And I fill in the search form with 80203
    fill_in "Search by zip...", with: "80202"
    # And I click "Locate"
    click_on "Locate"
    # Then I should be on page "/search" with parameters visible in the url
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
