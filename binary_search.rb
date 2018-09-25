# https://brilliant.org/practice/cs-recursion/?p=6

def findIndex(array, number, index=0)
  # get middle value
  middle_value_index = (array.length - 1 ) / 2
  middle_value = array[middle_value_index]

  # return value index if matches
  return index + middle_value_index if middle_value == number

  # return not present if not present
  return "not present" if middle_value_index == -1

  # if middle value greater, check in first half of array
  if middle_value > number
    new_array = array.slice(0, middle_value_index)
  end
  # if middle value less than number, check in second half of array
  if middle_value < number
    new_array = array.slice(middle_value_index + 1, array.length)
    index += middle_value_index + 1
  end

  # rerun findIndex with new array and index
  return findIndex(new_array, number, index)
end

number = 4
array = [-1,  0,  1, 1, 3, 4, 5, 6, 8, 9, 10, 10, 11, 20, 100]
index = findIndex(array, number)
print(index)
