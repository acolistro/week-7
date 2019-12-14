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
  it("returns 'antigram' if two words don't share any letters.") do
    anagram = Anagram.new()
    expect(anagram.compare("hi", "bye")).to(eq("antigram"))
  end
  it("checks if there are any anagrams in a multi-word string.") do
    anagram = Anagram.new()
    expect(anagram.contains_anagram?("Hi my bat has a tab bye")).to(eq("this sentence contains at least one anagram"))
  end
  it("checks if there are any antigrams in a multi-word string.") do
    anagram = Anagram.new()
    expect(anagram.contains_antigram?("Hi my bat has a tab bye")).to(eq("this sentence contains at least one antigram"))
  end
end
