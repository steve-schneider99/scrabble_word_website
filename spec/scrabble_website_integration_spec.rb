require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the Scrabble score path', {:type=> :feature} do
  it('processes the user entry and returns the the word and the score of the word') do
    visit('/')
    fill_in('Scrabble_word', :with=> 'cat')
    click_button('Send')
    expect(page).to have_content(WORD: "cat", SCORE: 5)
  end
end
