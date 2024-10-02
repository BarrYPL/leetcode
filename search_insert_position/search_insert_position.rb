def search_insert(nums, target)
  return nums.length if target > nums.last
  return 0 if target < nums.first
  return nums.index(target) unless nums.index(target).nil?
  left_ptr = 0
  right_ptr = nums.size
  while left_ptr+1 != right_ptr
    mid_index = (left_ptr + right_ptr)/2
    mid_val = nums[mid_index]
    mid_val < target ? left_ptr = mid_index : right_ptr = mid_index
  end
  return right_ptr
end

#My tests

nums = [1,3,5,6]
target = 2

puts search_insert(nums, target)
