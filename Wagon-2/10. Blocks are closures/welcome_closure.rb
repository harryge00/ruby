count = 0

def welcome_func
  array = []
  # your code goes here !
  return Proc.new do |name|
	  array << name
	  p 'Welcome ' + name + ', join your ' + (array.size() - 1).to_s + ' friend'
	end
end

welcome_blk = welcome_func
welcome_blk.call("felix") # => Welcome felix, join your 0 friend
welcome_blk.call("estelle") # => Welcome estelle, join your 1 friend
welcome_blk.call("cedric") # => Welcome estelle, join your 2 friends
array=[]
welcome_blk.call("fred") # => Welcome fred, join your 3 friends
