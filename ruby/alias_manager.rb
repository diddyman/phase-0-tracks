#BUSINESS LOGIC

class Encrypt
	def initialize
		puts "Initializing..."
   end
	
	def get_method(name1, name2)
		@name1 = name1
		@name2 = name2
		fullname = @name1 + ' ' + @name2
    end
	
  # Swaps first name with last name. Hence, the last name is shown first
	def swapnames
		@name1
		@name2
		fullname = @name2 + ' ' + @name1
	end
	
	#"Checks if letter is a vowel, if letter is a vowel, the next vowel will be selected"
	#"Checks if letter is a consonant, if letter is a consonant it selects the next consonant
	#Processes name 2 and then name 1
	
	def change_vowels_consonants
		vowels = ["a", "e", "i", "o", "u"]
		name2 = @name2
		name2 = @name2.downcase.split('')
		name2.map! { |letter| 
						if vowels.include?(letter) == true
							new_letter = vowels.index(letter).next
							vowels[new_letter]
						elsif vowels.include?(letter.next) == false
							next_letter = letter.next
							next_letter
						elsif vowels.include?(letter.next) == true
						    con_next_letter = letter.next.next
						    con_next_letter
						else
							puts "Only alphabets allowed"
						end
								}
					name_2 = name2.join
					name_2 = name_2.to_s

   #Processing name1

		name1 = @name1
		name1 = @name1.downcase.split('')
		name1.map! { |letter| 
						if vowels.include?(letter) == true
							new_letter = vowels.index(letter).next
							vowels[new_letter]
						elsif vowels.include?(letter.next) == false
							next_letter = letter.next
							next_letter
						elsif vowels.include?(letter.next) == true
						    con_next_letter = letter.next.next
						    con_next_letter
						else
							puts "Only alphabets allowed"
						end
								}
					name_1 = name1.join
					name_1 = name_1.to_s

					full_name = name_2 + ' ' + name_1
					full_name.split.map(&:capitalize).join(' ')
	end
end


# USER INTERFACE
#Loop allows user to enter names as long as needed. Program stops when user enters "quit"
loop do
	puts "What is your first name?:"
	name1 = gets.chomp!

	puts "What is your last name?:"
	name2 = gets.chomp!

		if name1 == "quit" || name1 == "quit"
			break
		else
			cat = Encrypt.new 
			cat.get_method(name1, name2)
			cat.swapnames
			puts cat.change_vowels_consonants
		end
end


