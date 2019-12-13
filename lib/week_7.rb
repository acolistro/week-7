class Anagram
  attr_accessor(:word1, :word2)

  def initialize()
    @word1 = ''
    @word2 = ''
  end

  def compare(word1, word2)
    word1 = word1.downcase.chars
    word2 = word2.downcase.chars

    is_word1 = (word1.select { |i| (i === (i.index-1) & (i.index-2)) })
    is_word1 = (word1.select { |i| (i === (i.index-1) & (i.index-2)) })

    if (word1.to_set === word2.to_set) & (is_word1 === true) & (is_word2 === true)
      is_anagram = true
    else
      is_anagram = false
    end
    is_anagram
  end

end
