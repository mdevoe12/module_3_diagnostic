require 'rails_helper'

RSpec.feature 'visitor sees AltFuelFinder' do
  scenario 'when visting root path' do
    VCR.use_cassette("features/visitor_sees_altfuelfinder_on_root_spec.rb") do

      visit root_path

      expect(page).to have_content("AltFuelFinder")
    end
  end
end
