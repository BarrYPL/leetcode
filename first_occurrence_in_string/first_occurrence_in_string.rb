def str_str(haystack, needle)
  return -1 if haystack.nil? || haystack.empty? || needle.nil? || needle.empty?
  word_len = needle.length
  fast_ptr = 0
  slow_ptr = 0
  while (slow_ptr + word_len <= haystack.size)
    if haystack[slow_ptr] != needle[0]
      slow_ptr +=1
    else
      if haystack[slow_ptr + fast_ptr] == needle[fast_ptr]
        fast_ptr +=1
        if fast_ptr == word_len
          return slow_ptr
        end
      else
        fast_ptr = 0
        slow_ptr +=1
      end
    end
  end
  return -1
end

#My tests

haystack = "sadbutsad"
needle = "sad"

#haystack = "leetcode"
#needle = "leeto"

puts str_str(haystack, needle)

