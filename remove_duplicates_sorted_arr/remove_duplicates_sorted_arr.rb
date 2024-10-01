def remove_duplicates(nums)
    right_ptr = 1
    left_ptr = 0
<<<<<<< HEAD
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
=======
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
>>>>>>> master
end

#My tests

<<<<<<< HEAD
array = [1,1,2]

array = remove_duplicates(array)

puts array.inspect
=======
array = [1,1,2,2,2,2,3,3,3,4,5,6,6,6,7,8]

k = remove_duplicates(array)

puts array.inspect
puts k
>>>>>>> master
