require 'spec_helper'

## describe "log in" do
##  it "as a user" do
##  visit "/login"
##    fill_in "Email", with: "user@ticketee.com"
##    fill_in "Password", with: "password"
##    click_button "Login"
##    expect(page).to have_content("You have been successfully logged in.")
##  end
## end
feature "signing in." do
  scenario 'Signing in via form' do
    user = FactoryGirl.create(:user)

    visit '/posts'
    click_link 'Sign in'
    fill_in 'Username', with: "Iron Man"
    fill_in 'Password', with: "manofsteel"
    click_button "Sign in"

    expect(page).to have_content("Signed in successfully.")
  end
end
