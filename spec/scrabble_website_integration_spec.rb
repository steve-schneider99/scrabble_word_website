require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the Scrabble score path', {:type=> :feature}) do
  it('processes the user entry and returns the the word and the score of the word') do
    visit('/')
    fill_in('word', :with=> 'cat')
    click_button('Score the word!')
    expect(page).to have_content(5)
  end
end
