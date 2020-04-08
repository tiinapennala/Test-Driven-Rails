require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy bread"

    expect(page).to display_todo("Buy bread")
  end
end
