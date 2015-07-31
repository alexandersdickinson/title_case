require('rspec')
require('title_case')

describe('String#title_case') do
  it('capitalizes the first letter of a word') do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end

  it('capitalizes all words in a multiple word title') do
    expect(("the color purple").title_case).to(eq("The Color Purple"))
  end
  
  it('does not capitalize prepositions or articles') do
    expect(("the cat on the roof over the ford").title_case).to(eq("The Cat on the Roof over the Ford"))
  end
end
