def map(array)
  new_array = []
  index = 0
  while index < array.length do
    new_array.push(yield(array[index]))
    index += 1
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    answer = starting_point
    index = 0
  else 
    answer = array[0]
    index = 1
  end
  while index < array.length do
    answer = yield(answer, array[index])
    index += 1
  end
  answer
end

