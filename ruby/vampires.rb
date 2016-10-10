
puts "What is your name?"
name = gets.chomp!

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
birth_year = gets.chomp!

puts "Should we order garlic bread for you (yes or no)?"
eat_garlic = gets.chomp!

puts "Would you like to enroll in the company's health insurance? (yes or no)"
health_insurance = gets.chomp!

current_year = '2016'
real_age = (current_year.to_i - birth_year.to_i)

if age == real_age
	age = true
else age != real_age
	age = false
end

if name = "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire"
elsif age == true && (eat_garlic = "yes" || health_insurance = "yes")
	puts "Probably not a vampire"
elsif age == true && (eat_garlic = "yes" || health_insurance = "yes")
	puts "Almost certainly a vampire"
elsif age == false && eat_garlic = "no" || health_insurance = "no"
	puts "Probably a vampire"
else 
	puts "Result inconclusive"
end








=begin
puts " What is your name?"
name = gets.chomp!

puts "How old are you?"	
age = gets.chomp!

puts "What year were you born?"
year_born = gets.chomp!

puts "Our company cafertia serves garlic bread. Should we order some for you? (y/n)"
eat_garlic = gets.chomp!

puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp!

current_year = 2016
real_age = (current_year.to_i - year_born.to_i)

if age == real_age
	age = true
else
	age = false
end

if eat_garlic == "y"
	eat_garlic = true
else
	eat_garlic = false
end

if health_insurance == "y"
	health_insurance = true
else
	health_insurance = false
end

if name == "Drake Cula" || "Tu Fang"
	name = 'false'
else 
	name = 'true'
end

if !name
	puts "Definitely a vampire"
elsif age && (eat_garlic || health_insurance)
	puts "probably not a vampire"
elsif !(age && eat_garlic && health_insurance)
	puts "Almost certainly a vampire"
elsif !age && !(eat_garlic || health_insurance)
	puts "Probably a vampire"
else
	puts "Result inconclusive"
end
=end
	
	




