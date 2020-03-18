# Your Code Here
def map(array)
  out = []
  

  #array.map {|n|
  #out.push(yield(n))
  #}
  
  
  count = 0
  
  
  while (count < array.count) do
    out.push(yield(array[count]))
    count+=1
  end
    

  
  out

end


def reduce(array,*starting)
  if starting[0]
    value = starting[0]
    count = 0
    else
    value = array[0]
    count = 1
  end

  while count < array.count do
    value =  yield(value,array[count])
    count+=1
  end 
 value
end