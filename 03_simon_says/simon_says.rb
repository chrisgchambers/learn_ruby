def echo (param)
  return param
end

def shout (param)
  return param.upcase
end

def repeat (string_in, repeats=2)
  string_out = string_in
  (repeats-1).times {string_out += " "+ string_in}
  string_out
end

def start_of_word (string_in, chars)
  string_in[0..(chars-1)]
end

def first_word(string_in)
  string_in.split[0]
end

def titleize(string_in)
  words = string_in.split(' ')
  words[0][0] = words[0][0].upcase
  for word in words do
    if !["the","and","in","on", "over"].include?(word)
      word[0] = word[0].upcase
    end
  end
  words.join(" ")
end
