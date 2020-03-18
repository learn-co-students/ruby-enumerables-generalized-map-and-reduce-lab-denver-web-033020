def map(array)
  i = 0 
  result = []
  while i < array.length do 
    var = array[i]
    result << yield(var)
    i += 1 
  end 
  result
end 

def reduce(array, starting_value = nil)
  if starting_value
    sum = starting_value
    i = 0 
  else 
    sum = array[0]
    i = 1
  end 
  while i < array.length do 
    sum = yield(sum, array[i])
    i += 1 
  end 
  sum 
end 