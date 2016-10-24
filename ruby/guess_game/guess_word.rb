#BUSINESS LOGIC

class Guessword
	attr_reader :guess_count
	attr_reader :selected_word
	attr_reader :spaced_letters
	attr_reader	:wordcount
	
  def initialize
    @word = ["ball", "doll", "baby", "cat", "dog", "harry", "animal", "states", "country", "time", "football", "soccer", "exercise", "television", "play", "laptop", "computer", "hatch", "halloween", "holiday", "october", "fall", "initialize", "competitive" ]
    @guess_count = 0
    @selected_word = " "
    @generated_letters = []
    @spaced_letters = []
    @wordcount = ''
  end
  
  def generate_word				#=> Generates a word and also determines the length of the word
  	selected_word = @word[rand(@word.length)]
  	@selected_word = selected_word
  	@wordcount = selected_word.length
  end
  
  def split_word			#=> Splits the generated word into letters
  	@generated_letters = @selected_word.chars
  	@generated_letters
  end
  
  def show_letters			 #=> Places letter with a "-" if the index of letter is even
  	@generated_letters.each_with_index { |letter, index|  
  	if index.even?
  		 "-" 
  		 @spaced_letters << "-"
  	else 
  		letter
  		@spaced_letters << letter
  	end }
  	spaced_letters = @spaced_letters.join(' ')
  end

end


# USER INTERFACE

guesscount = 0
puts "Welcome to the Word Guessing Game!"
puts "Objective: The objective of this game is to guess the correct word!"
puts "The number of guesses is equal to the length of the word."

game = Guessword.new
game.generate_word
selected_word = game.selected_word
selected_word.to_s
game.split_word
p game.show_letters
guessword = game.spaced_letters
wordcount = game.wordcount

while guesscount < wordcount
 p "Guess the word:"
 guessed_input = gets.chomp.to_s
    guesscount +=1
	if selected_word.include?guessed_input       #=> Determines if user input word is correct
		p "Great job! You guessed the correct word: #{guessed_input.upcase}."
		break if guessed_input == selected_word
	else
		p "Incorrect guess!"
	end
end
	if selected_word == guessed_input
		p "Game completed!"
	else
		p "Game over: You lost! The correct word is #{selected_word.upcase}."
	end
