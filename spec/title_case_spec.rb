require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("beowolf").title_case()).to(eq("Beowolf"))
  end
  it("capitalizes the first letter of a multiple word string") do
    expect(("beowulf begins").title_case()).to(eq("Beowulf Begins"))
  end
  it("does not capitalize designated words (prepositions, conjunctions, etc)") do
    expect(("beowulf from brighton beach").title_case()).to(eq("Beowulf from Brighton Beach"))
  end
end
