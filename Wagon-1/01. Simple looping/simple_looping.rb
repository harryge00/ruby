# The objective is to create a function that computes the sum of the integers from a min value to a max value

def sum(min,max)
  # your code here
  result = 0
  for i in (min..max)
  	result += i
  end
  puts result
  return result
end

# Testing your code

min = 1
max = 100
sum = sum(1,100)
puts sum == 5050 # => true