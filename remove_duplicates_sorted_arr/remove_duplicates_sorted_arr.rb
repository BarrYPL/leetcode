def remove_duplicates(nums)
    right_ptr = 1
    left_ptr = 0
    counter = 0

    #Iterate over whole array
  while right_ptr < nums.length
    #puts "left_ptr: #{left_ptr}, right_ptr: #{right_ptr}"
    #puts nums.inspect
    
    if (nums[left_ptr] != nums[right_ptr])
      counter +=1
      left_ptr +=1
    else
      if nums[left_ptr] == "_"
        nums[left_ptr] = nums[right_ptr]
        nums[right_ptr] = "_"
      end
    end
    right_ptr +=1
  end
  puts counter
  nums
end

#My tests

array = [1,1,2]

array = remove_duplicates(array)

puts array.inspect
