# Defining Santa Class
class Santa
	attr_accessor :gender, :ethnicity
   

	def initialize(gender, ethnicity)    #=> Setting parameters for gender and ethnicity
#		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer" , "Prancer", "Vixen", "Comet" , "Cupid", "Donner", "Blitzen"] 
		@age = 0
	end

	def celebrate_birthday
		 new_age = rand(20...70)     #=> Randomly select a number from 20 to 70
		 @age = new_age + 1          #=> Add 1 to the number randonly selected in the line above
		 @age 						 #=> number derived in the line above equals age
	end

	def get_mad_at
		name = @reindeer_ranking[rand(9)]  		#=> Randomly select a name from the list of names
		@reindeer_ranking.push(name)			#=> push selected name to the end of list of names
		name
	end

	def speak
		 "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		 "I really enjoyed eating those #{cookie}"
	end
end


santas = []
list_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
list_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#=> Randomly select a gender and ethnnicity from the lists above and initialize the santa class
#=> Generate 100 pairs of gender and ethnicity (100 santas)
#=> Add instance methods to the santas array

100.times do |i|
  santas << Santa.new(list_genders[rand(list_genders.length)], list_genders[rand(list_ethnicities.length)] )
end

#> Call initialized instance method for each pair of gender and ethnicity selected, and process all other instance methods
santas.each { |a|  p a.celebrate_birthday
                   p a.get_mad_at
                   p a.speak
                   p a.eat_milk_and_cookies("brownies")
                  }





