def wagon_sort
	array=[]
	p 'Type a student:'
	name = gets.chomp
	array << name
	loop do
		p 'Type another student (or press enter to finish):'
		name = gets.chomp
		break if name.empty?
		array << name 
	end
	# your code to sort the array and output students
    p array.sort_by{|name| name}
end

# your code to interact with the user..

wagon_sort