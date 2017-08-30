require 'rails_helper'

RSpec.feature 'visitor sees AltFuelFinder' do
  scenario 'when visting root path' do
    visit root_path

    expect(page).to have_content("AltFuelFinder")
  end
end
