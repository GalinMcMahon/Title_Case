require('rspec')
require('title_case')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('String#title_case', {:type => :feature}) do
  it('processes the user entry and returns it title cased') do
    visit('/')
    fill_in('title', :with => 'green eggs and ham')
    click_button('Send')
    expect(page).to have_content('Green Eggs and Ham')
  end
end
