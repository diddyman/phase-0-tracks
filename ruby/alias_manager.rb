#BUSINESS LOGIC

class Encrypt
	attr_reader :fakename, :fname, :test

	def initialize(fname) 
		puts "Initializing..."
		@fname = fname.split(' ')   #Splits name and assigns the result of the split o first and last names
	 	@name1 = @fname.first
	 	@name2 = @fname.last
    end
	
  # Swaps first name with last name. 
	def swapnames
		@fakename = [@name2,@name1]
	end
	
	def change_vowels_consonants
		vowels = ["a", "e", "i", "o", "u"]
		@fakename.map! do |name|
		name = name.downcase.split('')
		name.map! { |letter| 
						if vowels.include?(letter) == true   #"Checks if letter is a vowel, if letter is a vowel, the next vowel will be selected"
							new_letter = vowels.index(letter).next
							vowels[new_letter]
						elsif vowels.include?(letter.next) == false #"Checks if letter is a consonant, if letter is a consonant it selects the next consonant
							next_letter = letter.next
							next_letter
						elsif vowels.include?(letter.next) == true
						    con_next_letter = letter.next.next
						    con_next_letter
						else
							puts "Only alphabets allowed"
						end
		}
			name.join
		end
			@fakename = @fakename.join(" ")
			newname = @fakename.split.map(&:capitalize).join(' ').to_s
	end
end


# USER INTERFACE
#Loop allows user to enter names as long as needed. Program stops when user enters "quit"
fake_names = []
real_names = []
loop do
	puts "What is your full name?:"
	name1 = gets.chomp!
	break if name1 == "quit"
			real_names.push(name1)
			cat = Encrypt.new(name1)
			cat.swapnames
			fake_names.push(cat.change_vowels_consonants)
end

fake_names.zip(real_names).each do |fake, real|   #Iterates through both fake and real name arrays
				puts "#{fake} is actually #{real}"
end



