class Anagram
  # attr_accessor(:word1, :word2)

  def initialize(sentence1, sentence2)
    @sent1 = sentence1
    @sent2 = sentence2
    @words1 = sentence1.split
    @words2 = sentence2.split
    @letters1 = @words1.join.downcase.gsub("'", '').chars.sort
    @letters2 = @words2.join.downcase.gsub("'", '').chars.sort
  end

  def is_anagram?
    str = (@letters1 + @letters2).join
      if (@letters1 == @letters2) && ((str =~ /[aeiou]/) <= 1)
        return "These words are anagrams!"
      else
        "These words are NOT anagrams OR not real words!"
    end
  end

  def is_antigram?
    if (@letters1 & @letters2) == []
      "These words are antigrams"
    else
      "These words are not antigrams"
    end
  end

  def sent_is_anagram?
    str = (@letters1 + @letters2).join
      if (@letters1 == @letters2) && ((str =~ /[aeiou]/) <= 1)
        return "Your sentences are anagrams!"
      else
        return "Your sentences are not anagrams OR contain non-words"
      end
  end

  def sent_real?
    words = @words1 + @words2
    i = 0
    words.each do |word|
      if (word =~ /[aeiou]/) >= 2
        i += 1
      else
        return "Your sentences contain one or more non-words"
      end
    end
  end
end


  # def letter_count()
  # counts = {}
  #
  #   word.each_char do |char|
  #     next if char == " "
  #     counts[char] = 0 unless counts.include?(char)
  #     counts[char] += 1
  #   end
  #   counts
  # end

  # def compare(word1, word2)
  #   word1 = word1.downcase.chars
  #   word2 = word2.downcase.chars
  #   real_word1 = ''
  #   real_word2 = ''
    # sentence = sentence.split(/ /)
    #
    # sentence.each do |word|

  #   for letter in word1 do
  #     if (word1.find_index(letter) > 2) & ((letter[word1.find_index(letter)]) === (letter[word1.find_index(letter)-1])) & ((letter[word1.find_index(letter)]) === (letter[word1.find_index(letter)-2]))
  #       real_word1 = false
  #     elsif ((word1 & ["a", "e", "i", "o", "u"]).any?) === false
  #       real_word1 = false
  #     else
  #       real_word1 = true
  #     end
  #   end
  #
  #   for letter in word2 do
  #     if (word2.find_index(letter) > 2) & ((letter[word2.find_index(letter)]) === (letter[word2.find_index(letter)-1])) & ((letter[word2.find_index(letter)]) === (letter[word2.find_index(letter)-2]))
  #       real_word2 = false
  #     elsif ((word1 & ["a", "e", "i", "o", "u"]).any?) === false
  #       real_word1 = false
  #     else
  #       real_word2 = true
  #     end
  #   end
  #
  #   if (word1.to_set === word2.to_set) & (real_word1 === true) & (real_word2 === true)
  #     is_anagram = true
  #   elsif ((word1 & word2).any?) === false
  #     is_anagram = "antigram"
  #   else
  #     is_anagram = false
  #   end
  #   is_anagram
  # end

#   def contains_anagram?(sentence)
#     sentence = sentence.downcase.split(/ /)
#     jumble_sentence = []
#     for word in sentence do
#       word = word.chars.sort.join
#       jumble_sentence.push(word)
#     end
#
#     if jumble_sentence.length != jumble_sentence.uniq.length
#       anagram = "this sentence contains at least one anagram"
#     else
#       anagram = "this sentence contains no anagrams"
#     end
#     anagram
#   end
#
#   def contains_antigram(sentence)
#     sentence = sentence.downcase.split(/ /)
#     jumble_sentence = []
#     for word in sentence do
#       word = word.chars.sort.join
#       jumble_sentence.push(word)
#     end
#     for word in jumble_sentence do
#       jumble_sentence.pop(word)
#        (word.split('').uniq & array_of_letters_allowed).length == input.length
#
#       end
#     end
#
#   end
# end

# if (sentence.select{ |word| sentence.count(word) > 1 }).empty?
