def map (array)
  new_array = [];
  i = 0 
  while i < array.length do
  new_array <<  (yield(array[i]))
  i +=1 
end
new_array
end

def reduce (array, starting_val=nil)
  if starting_val
    sum = starting_val
  i = 0 
 else
   sum = array[0]
   i = 1
end
  while i < array.length 
    sum = yield(sum, array[i])
    i += 1 
end
  sum
    # loops it over our array -> passes in value of sum (either supplied starting value or first element in array) -> add that number to the next element in our aarray -> redefine sum to equal the sum of those two number
end
