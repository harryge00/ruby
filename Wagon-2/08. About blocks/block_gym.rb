# Recoding inject iterator

def inject(array, initial_value)
	# your code goes here
	array.each do |i|
		initial_value = yield(i, initial_value)
		# p initial_value
	end
	return initial_value
end

puts inject(1..100, 0) { |initial_value, element| element + initial_value } == 5050 # true

# Block timer

def timer_for
  # your code goes here
  start = Time.now
  yield
  p Time.now - start
end

timer_for do 
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end

# Should return around 2-3 seconds