require 'rails_helper'

RSpec.feature "user sees electric and propane sources" do
  scenario "when they search by zip" do
    # As a user
    # When I visit "/"
    visit root_path

    expect(page).to have_content("AltFuelFinder")
    VCR.use_cassette("features/user_searches_alt_fuel_by_zip_spec.rb") do

    fill_in :q, with: "80202"

    click_on "Locate"

    expect(page).to have_content("Electric and Propane Stations in your area")
    expect(page).to have_content(10, "Station:")
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
    end
  end
end
