def map(array)
negative_array = []
i = 0 
while i < array.length do 
 negative_array.push(yield(array[i]))
i += 1
end 
negative_array
end

def reduce(array, start_value=nil) #start_value is optional so want it equal to nil
  if start_value 
    total = start_value
    i = 0 #first element of the array
  else #if there isnt a starting point
    total = array[0]
    i = 1 #2nd element of the array
end  

while i < array.length 
total = yield(total, array[i])
i += 1
end
total
end 
