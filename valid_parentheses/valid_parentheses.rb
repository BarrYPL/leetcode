def is_valid(s)
    conversion_hash = {"[" => "a", "]" => "a", "{" => "b", "}" => "b", "(" => "c", ")" => "c"}
    closing_hash = {"[" => "]", "{" => "}", "(" => ")"}
    memory_hash = {"a" => 0, "b" => 0, "c" => 0}
    opened_heap = []
    s.split('').each do |n|
        if (n == "[" || n == "{" || n == "(")
            memory_hash[conversion_hash[n]] += 1
            opened_heap << n
        else
            if (n == closing_hash[opened_heap.last])
                memory_hash[conversion_hash[n]] -= 1
                opened_heap.pop
            else
                return false
            end
        end
    end
    return memory_hash.values.all? {|v| v == 0}
end

#My tests

s = "()[]{}"

puts is_valid(s)
