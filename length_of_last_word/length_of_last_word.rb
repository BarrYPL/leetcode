def length_of_last_word(s)
  s.split.last.length
end

#My tests

s = "   fly me   to   the moon  "

puts length_of_last_word(s)
