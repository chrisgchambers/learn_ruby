def translate(string_in)
  words = string_in.split
  string_out = []

  for word in words do
    case word[0].downcase
      when 'a', 'e', 'i', 'o', 'u'
        string_out.push(word + "ay")
      else
        case word[1].downcase
          when 'a', 'e', 'i', 'o','y'
            string_out.push(word[1..word.length] + word[0] + 'ay')
          when 'u'
            if word[0].downcase =='q'
              string_out.push(word[2..word.length] + word[0..1] + 'ay')
            else
              string_out.push(word[1..word.length] + word[0] + 'ay')
            end
          else
            case word[2].downcase
            when 'a', 'e', 'i', 'o', 'y'
              string_out.push(word[2..word.length] + word[0..1] + 'ay')
            when 'u'
              if word[1].downcase =='q'
                string_out.push(word[3..word.length] + word[0..2] + 'ay')
              else
                string_out.push(word[2..word.length] + word[0..1] + 'ay')
              end
            else
              string_out.push(word[3..word.length] + word[0..2] + 'ay')
            end
          end
    end
  end
  string_out.join(' ')
end
