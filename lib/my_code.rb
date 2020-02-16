
def map(array)
  
  new = []
  count = 0
  
  while count < array.length
    new.push(yield(array[count]))
    count += 1
  end
  new
end

def reduce(array, sv=nil)
  count = 1
  total = 0
  
  if sv
    total =  sv
    count = 0
  else
    total = array[0]
  end

  while count < array.length
    total = (yield(total, array[count]))
    count += 1
  end
  total
end