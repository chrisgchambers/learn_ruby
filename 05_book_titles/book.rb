class Book
  def title
    @title
  end
  def title=(string_in)
    words = string_in.split(' ')
    words[0][0] = words[0][0].upcase
    for word in words do
      if !["the","and","in","on","over", "of", "a", "an"].include?(word)
        word[0] = word[0].upcase
      end
    end
    @title = words.join(" ")
  end
end
