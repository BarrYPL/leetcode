def remove_duplicates(nums)
    right_ptr = 1
    left_ptr = 0
    counter = 1

  #Iterate over whole array
  while right_ptr < nums.length
    return 0 if nums.length == 0
    if (nums[left_ptr] != nums[right_ptr])
      counter +=1
      left_ptr +=1
      nums[left_ptr] = nums[right_ptr]
    end
    right_ptr +=1
  end
  counter
end

#My tests

array = [1,1,2,2,2,2,3,3,3,4,5,6,6,6,7,8]

k = remove_duplicates(array)

puts array.inspect
puts k
