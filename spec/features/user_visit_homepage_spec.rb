require "rails_helper"

# Overall functionality
feature "User visits homepage" do
  scenario "successfully" do
    #visit string or rails routes
    visit root_path

    expect(page).to have_css 'h1', text: 'Todos'
  end
end
