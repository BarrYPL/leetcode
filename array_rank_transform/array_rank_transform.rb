def array_rank_transform(arr)
    h = arr.uniq.sort.each_with_index.to_h
    puts h.inspect
    arr.map { |x| h[x] + 1 }
end

#My testes

a = [37,12,28,9,100,56,80,5,12]

ar = array_rank_transform(a)

puts ar.inspect
