def map(array)
  new=[]
  number_index = 0 
  while number_index<array.length 
  new.push(yield(array[number_index]))
  number_index+=1 
  end
  new
end

def reduce(array, starting_value=nil)
  if starting_value
    sum=starting_value
    number_index =0 
  else
    sum=array[0]
    number_index=1
  end
  while number_index<array.length
    sum = yield(sum,array[number_index])
    number_index+=1
  end
  sum
end
