def remove_element(nums, val)
    nums.delete(val)
    return nums.length
end

#My tests

array = [0,1,2,2,3,0,4,2]

k = remove_element(array, 2)

puts array.inspect
puts k
