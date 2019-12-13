class Anagram
  attr_accessor(:word1, :word2)

  def initialize()
    @word1 = ''
    @word2 = ''
  end

  def compare(word1, word2)
    word1 = word1.downcase.chars
    word2 = word2.downcase.chars

    def is_word(word)
      word.each do |letter|
        if letter[letter.index] === letter[(letter.index)-1] & letter[(letter.index)-2]
          real_word = false
        else
          real_word = true
        end
      end
      real_word


    if (word1.to_set === word2.to_set) & (word1.is_word === true) & (word2.is_word === true)
      is_anagram = true
    else
      is_anagram = false
    end
    is_anagram
  end


end
end
