require ('rspec')
require ('pry')
require ('set')
require ('week_7')

describe('#week_7') do
  it("returns 'These words are anagrams' if two words are anagrams") do
    anagram = Anagram.new("chicken", "egg")
    expect(anagram.is_anagram?).to(eq(        "These words are NOT anagrams OR not real words!"))
  end
  it("returns 'These words are anagrams' if two words are anagrams even if there is a difference in case") do
    anagram = Anagram.new("Bat", "tAb")
    expect(anagram.is_anagram?).to(eq("These words are anagrams!"))
  end
  it("returns 'Please enter a real word!' if a word does not contain a vowel") do
    anagram = Anagram.new("swrd", "vbnm")
    expect(anagram.is_anagram?).to(eq("These words are NOT anagrams OR not real words!"))
  end
  it("returns 'These words are antigrams' if two words share no letters in common") do
    anagram = Anagram.new("zap", "bed")
    expect(anagram.is_antigram?).to(eq("These words are antigrams"))
  end
  it("returns 'your sentences are anagrams' if they share all characters") do
    anagram = Anagram.new("Conversation", "Voices rant on")
    expect(anagram.sent_is_anagram?).to(eq("Your sentences are anagrams!"))
  end


  # it("returns false if any of the words are NOT words indicated by three similar letters in a row") do
  #   anagram = Anagram.new()
  #   expect(anagram.compare("Bbbat", "tAbbb")).to(eq(false))
  # end
  # it("returns false if any of the wordsare NOT words indicated by not containing a vowel") do
  #   anagram = Anagram.new()
  #   expect(anagram.compare("bbt", "tab")).to(eq(false))
  # end
  # it("returns 'antigram' if two words don't share any letters.") do
  #   anagram = Anagram.new()
  #   expect(anagram.compare("hi", "bye")).to(eq("antigram"))
  # end
  # it("checks if there are any anagrams in a multi-word string.") do
  #   anagram = Anagram.new()
  #   expect(anagram.contains_anagram?("Hi my bat has a tab bye")).to(eq("this sentence contains at least one anagram"))
  # end
  # it("checks if there are any antigrams in a multi-word string.") do
  #   anagram = Anagram.new()
  #   expect(anagram.contains_antigram?("Hi my bat has a tab bye")).to(eq("this sentence contains at least one antigram"))
  # end
end
