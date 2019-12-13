require ('rspec')
require ('pry')
require ('set')
require ('week_7')

describe('#week_7') do
  it("returns true if two words are anagrams") do
    anagram = Anagram.new()
    expect(anagram.compare("bat", "tab")).to(eq(true))
  end
  it("returns true if two words are anagrams even if there is a difference in case") do
    anagram = Anagram.new()
    expect(anagram.compare("Bat", "tAb")).to(eq(true))
  end
  it("returns false if any of the words are NOT words indicated by three similar letters in a row") do
    anagram = Anagram.new()
    expect(anagram.compare("Bbbat", "tAbbb")).to(eq(false))
  end
  it("returns false if any of the wordsare NOT words indicated by not containing a vowel") do
    anagram = Anagram.new()
    expect(anagram.compare("bbt", "tab")).to(eq(false))
  end
end
