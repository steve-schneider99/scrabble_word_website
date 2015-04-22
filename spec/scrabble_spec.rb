require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('returns the score value of a letter') do
    expect(("a").scrabble()).to(eq(1))
  end
end

describe('String#scrabble') do
  it('returns the score value of a word') do
    expect(("cAt").scrabble()).to(eq(5))
  end
end
