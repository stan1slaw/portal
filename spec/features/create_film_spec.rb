require 'rails_helper'

RSpec.describe "Creating Film with login", type: :feature, js: true do
  scenario "login in admin and add new film" do
    user = FactoryBot.create(:admin)
    film = FactoryBot.build(:film)
    user.confirm
    visit user_session_url
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign In"
    page.should have_content "Signed in successfully."
    click_link "Films"
    page.should have_content "All films"
    click_link "Add film"
    expect(current_path).to eql('/films/new')
    fill_in "Name", with: film.name
    fill_in "Producer", with: film.producer
    fill_in "Description", with: film.description
    page.attach_file("film_picture", Rails.root + 'app/assets/images/roque.jpeg')
    fill_in "dataPickerId", with: "04-04-2017"
    click_button "Add film"
    page.should have_content "film was created!"
  end
end
