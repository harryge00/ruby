def anagrams?( a_string, another_string )
  # your code goes here
  a_string=a_string.downcase
  another_string=another_string.downcase
  chars1=Hash.new()
  for i in (0..a_string.size()-1)
  	if a_string[i] != " "
  		if !chars1[a_string[i]]
  			chars1[a_string[i]] = 1
  		else
  			chars1[a_string[i]] += 1
  		end
  	end
  end
  p chars1
  for i in (0..another_string.size()-1)
  	if another_string[i] != " "
  		if !chars1[another_string[i]]
  			return false
  		else
  			chars1[another_string[i]] -= 1
  			if chars1[another_string[i]] < 0
  				return false
  			end
  		end
  	end
  end
  p chars1
  s = 0
  chars1.each{|_,v| s+=v}
  return s == 0
end

def anagrams_on_steroids?( a_string, another_string )
  # your code goes here
end

# complexity = ?
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true 
puts anagrams? "Monica Lewinsky", "Nice silky woma" # => false 

# complexity = ?
# puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true