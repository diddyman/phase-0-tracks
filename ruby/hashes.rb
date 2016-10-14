

#Give the user the opportunity to update a key
puts "Would you like to update your entry? (yes or no):"
entry = gets.chomp!
	if entry == "yes"
		puts "What entry would you like to update?:"
		update_entry = gets.chomp!

			if update_entry == "name"
				puts "What is the client's full name?:"
				details[:name] = gets.to_s.chomp!
				p details
			elsif update_entry == "age"
				puts "How old is the client?:"
				details[:age] = gets.to_i
				p details
			elsif update_entry == "kids"
				puts "How many children does the client have?:"
				details[:kids]  = gets.to_i
				p details
			elsif update_entry == "decor_theme"
				puts "What is the client's theme decor?:"
				details[:decor_theme] = gets.to_s.chomp!
				p details
			elsif update_entry == "none" 
				p details
			else
				p details
			end
			
	elsif entry == "no"	
	    p details
	 else
	 	puts "invalid entry"
	 	p details
	 end
