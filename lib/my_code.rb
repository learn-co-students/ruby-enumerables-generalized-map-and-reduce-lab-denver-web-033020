# Your Code Here

def map(arr)
  i = 0 
  new_arr = []
  while i < arr.length do 
    new_arr.push(yield(arr[i]))
    i += 1 
  end 
  return new_arr
end

def reduce(source_array, starting_point = nil)
  if starting_point
    result = starting_point
    i = 0 
  else
    result = source_array[0]
    i = 1 
  end
       while i < source_array.length do 
         result = yield(result, source_array[i])
         i += 1 
     end
  result
end

 


