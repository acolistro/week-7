class Anagram
  attr_accessor(:word1, :word2)

  def initialize()
    @word1 = ''
    @word2 = ''
  end

  def compare(word1, word2)
    word1 = word1.downcase.chars
    word2 = word2.downcase.chars
    real_word1 = ''
    real_word2 = ''


    for letter in word1 do
      if (word1.find_index(letter) > 2) & ((letter[word1.find_index(letter)]) === (letter[word1.find_index(letter)-1])) & ((letter[word1.find_index(letter)]) === (letter[word1.find_index(letter)-2]))
        real_word1 = false
      else
        real_word1 = true
      end
    end

    for letter in word2 do
      if (word2.find_index(letter) > 2) & ((letter[word2.find_index(letter)]) === (letter[word2.find_index(letter)-1])) & ((letter[word2.find_index(letter)]) === (letter[word2.find_index(letter)-2]))
        real_word2 = false
      else
        real_word2 = true
      end
    end

    if (word1.to_set === word2.to_set) & (real_word1 === true) & (real_word2 === true)
      is_anagram = true
    else
      is_anagram = false
    end
    is_anagram
  end
end
