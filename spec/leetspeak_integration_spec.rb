require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the leetspeak path', {:type => :feature}) do
  it('processes the user entry and returns it with leetspeak') do
    visit('/')
    fill_in('words', :with => 'I scream you scream we all scream for raspberry ice cream.')
    click_button("Let's play")
    expect(page).to have_content("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am.")
  end
end
