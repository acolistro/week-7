class Anagram
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare(word1, word2)
    word1 = word1.chars.to_set
    word2 = word2.chars.to_set

    if 

end
