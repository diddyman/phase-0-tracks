#Iterating over an array
letters = ['a', 'b', 'c', 'd']
letters.each do |l| puts "#{l} is only a letter"
  	end

#Iterating over a hash
animals = {'a'=> 'antelope', 'b' => 'bat', 'c' => 'cat', 'd' => 'dog'}
animals.each do |letter, animal| puts "#{animal} is a type of animal"
  	end



values = [1, 3, 4, 10, 76, 100, 74, 35, 43 ]

# This method rejects or deletes values less than 5 (Arrays)
def less(values)
	new_numbers = values.reject {|n| n < 5 }   
end

#This method rejects or deletes values more than 5 (Arrays)
 def more(values)
 	new_numbers = values.reject { |n| n >= 5 }
 end


p less(values)
p more(values)

value = {
			'Freshmen' => 4, 
			'Sophomores' => 10, 
			'Juniors' => 8, 
			'Seniors' => 3, 
			'Graduates' => 20,
			'Postgrads' => 2
			}

# This method rejects or deletes values less than 5 (Hash)
def less(value)
	 new_numbers = value.delete_if { |level, digits| digits < 5 }   
	 puts value.inspect
end

valuee = {
			'Freshmen' => 4, 
			'Sophomores' => 10, 
			'Juniors' => 8, 
			'Seniors' => 3, 
			'Graduates' => 20,
			'Postgrads' => 2
			}
#This method rejects or deletes values more than 5 (Hash)
def more(valuee)
	new_numbers = valuee.delete_if { |level, digits| digits >= 5 }
	puts valuee.inspect
end


puts less(value) 
puts more(valuee)

