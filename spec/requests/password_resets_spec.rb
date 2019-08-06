require 'rails_helper'

RSpec.describe "PasswordResets", type: :request do
  it "emails user when requesting password reset" do
    user = FactoryBot.create(:user)
    visit user_session_url
    click_link "Forget your password?"
    fill_in "Email", with: user.email
    click_button "Send me reset password instructions"
    page.should have_content "You will receive an email with instructions on how to reset your password in a few minutes."
    last_email.to.should include(user.email)
  end
end
