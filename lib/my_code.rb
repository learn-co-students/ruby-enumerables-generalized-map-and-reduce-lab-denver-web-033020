def map(array)
  i = 0 
  new_array = []
  while i < array.length do 
  new_array << yield(array[i])
    i += 1 
  end 
  new_array
end 


def reduce(array, start = nil)
  if start 
    num1 = start
    i = 0 
  else i = 1 
    num1 = array[0] 
  end 
  while i < array.length do 
    num1 = yield(num1, array[i])
    i += 1 
  end
  num1
end 
