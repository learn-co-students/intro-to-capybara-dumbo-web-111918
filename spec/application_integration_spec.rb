require 'spec_helper'

describe "GET '/' - Greeting Form" do
  # Code from previous example
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

# describe "GET '/' - Greeting Form" do
#   it 'welcomes the user' do
#     visit '/'
#     expect(page.body).to include("Welcome!")
#   end
# end

## visit and page are new capybara methods
# visit navigates test browser to a specific URL
# basically, this is a user typing a URL into browser
# visit accepts an arguement as a string, "the url" we want to test

# page exposes session or browser that is used during test
# page gives you a Capybara::Session object, which represents browser page
# => page responds to many methods that represents actions a user could take on the page
# i.e click_link, fill_in, body
# i.e page.body method will dump out all HTML in current page as a string

  # New test
  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

# page <-- have_selector 'Checks if page has HTML that matches selector'
# page <-- have_field 'checks page to see if it has a field called user_name'
describe "POST '/greet' - User Greeting" do
  it 'greets the user personally based on their user_name in the form' do
    visit '/'

    fill_in(:user_name, :with => "Avi")
    click_button "Submit"

    expect(page).to have_text("Hi Avi, nice to meet you!")
  end
end

# use visit to load form into page object
# use fill_in to fill input field user_name with "avi"
