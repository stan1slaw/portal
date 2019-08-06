require 'rails_helper'

RSpec.feature "Visiting home page", type: :feature do
  scenario "the user should see a welcome page" do
    visit root_path
    expect(page).to have_text("A video portal is a service that has all the information about films, the date of the premier, the directors, the actors, you can create accounts and watch movies that you like.")
  end
  scenario "linking to Films page" do
    visit root_path
    click_link('Films')
    expect(current_path).to eql('/films')
    expect(page).to have_text("All films")
  end
end
