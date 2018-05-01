require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do

  # SETUP
  before :each do
    User.create!(
      name: "andy",
      email: "voandy1998@gmail.com",
      password: "password",
      password_confirmation: "password"
    )
  end

  scenario "They are able to login and be redirected to /" do
    # ACT
    visit login_path
    fill_in id: 'email', with: 'voandy1998@gmail.com'
    fill_in id: 'password', with: 'password'
    click_button 'Submit'

    # DEBUG / VERIFY
    save_screenshot
    puts page.html
  end
end
