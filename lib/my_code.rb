# Your Code Here
# input:
# => array of data
# => block of code to be executed on the array
# output:
# => array with each item run against the code
def map(data)
  result = []
  i = 0
  while i < data.count do
    x = yield(data[i])
    result << x
    i += 1
  end
  return result
end



# input:
# => array of data
# => block of code to be executed on the array
# output:
# => a true or false
def reduce(data, sv=nil)
  # check to see if we have a starting value
  if sv
    # set the first value to the starting value provided
    sum = sv
    i = 0
  # we do NOT have a starting value
  else
    # initialize to provided starting value
    sum = data[0]
    i = 1 # already looked at the first element
  end

  while i < data.count do
    # re-define what we are returning based on the
    # logic provided 
    sum = yield(sum, data[i])
    i += 1
  end

  return sum
end
