class Anagram

  def initialize(sentence1, sentence2)
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
