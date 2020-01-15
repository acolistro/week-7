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

  it("ensures that all words in compared sentences are real words") do
    anagram = Anagram.new("Taco cat", "Caat tco")
    expect(anagram.sent_real?).to(eq("Your sentences contain one or more non-words"))
  end
end
