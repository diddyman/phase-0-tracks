#BUSINESS LOGIC

class Guessword
  attr_reader :selected_word
  attr_reader :spaced_letters
  attr_reader :wordcount
  
  def initialize
    @word = ["ball", "dull", "cat", "dog", "boat", "chair"]
    @selected_word = " "
    @generated_letters = []
    @spaced_letters = []
    @wordcount = ''
  end
  
  def generate_word       #=> Generates a word and also determines the length of the word
    selected_word = @word[rand(@word.length)]
     @wordcount = selected_word.length
     @selected_word = selected_word
  end
  
  def split_word      #=> Splits the generated word into letters
    @generated_letters = @selected_word.chars
  end
  
  def show_letters         #=> replaces each letter with "-"
    @generated_letters.each { |letter|  
     "-" 
      @spaced_letters << "-"
    }
    
    spaced_letters = @spaced_letters.join(' ')
  end

end


# USER INTERFACE

guesscount = 0
puts "Welcome to the Word Guessing Game!"
puts "Objective: The objective of this game is to guess the correct word!"
puts "The number of guesses is equal to the length of the word."

game = Guessword.new
generated_word = game.generate_word  #This word will not be changed. It represents the generated word
selected_word = generated_word.dup   # This is a duplicate of the generated word. It may be changed fo manage edge cases... repetitive letters
selected_word = selected_word.chars
generated_word = generated_word.chars
p game.split_word
p game.show_letters
guessword = game.spaced_letters
wordcount = game.wordcount


while guesscount < wordcount
 p "Guess the letter:"
 guessed_input = gets.chomp.to_s
    guesscount +=1
  #use index not letter 
  if selected_word.include?guessed_input
    index_letter = selected_word.index(guessed_input) # retrieves an index number
    guessword[index_letter] = guessed_input 
    count_same_alphabet = selected_word.count(guessed_input) # Determine if the inputted letter occurs more than once in the generated word
     index_test = selected_word.index(guessed_input)
     selected_word[index_test] = nil if count_same_alphabet > 1  # handle edge cases where there is more than one similar alphabet
    p "Great job!"
    p guessword
  else
    p "Incorrect guess!"
  end
end 

  if guessword == generated_word
    p "Game completed successfully. Well done!"
  else
    p "Game over: You lost!."
  end
  
  