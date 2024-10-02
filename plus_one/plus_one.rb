def plus_one(digits)
  num = digits.join().to_i
  num +=1
  num.to_s.split('')
end

#My teste

digits = [9,9,9]

sr = plus_one(digits)

puts sr.inspect
