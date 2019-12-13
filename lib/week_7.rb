class Anagram
  attr_accessor(:word1, :word2)

  def initialize()
    @word1 = ''
    @word2 = ''
  end

  def compare(word1, word2)
    word1 = word1.downcase.chars.to_set
    word2 = word2.downcase.chars.to_set

    if word1 === word2
      is_anagram = true
    else
      is_anagram = false
    end
    is_anagram
  end
end
