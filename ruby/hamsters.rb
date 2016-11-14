puts "What's your name?"
name_hamster = gets.to_s
puts "Your name is #{name_hamster}"

puts "What's volume level"
volume_level = gets.to_s
puts "The volumelevel is #{volume_level}"

puts "What's fur color"
fur_color = gets.to_s
puts "The color of the fur is #{fur_color}"

puts "Is hamster a good candidate for adoption? (yes or no)"
candidacy_adoption = gets.to_s
if candidacy_adoption == 'yes'
	puts "The hamster is a good candidate for adoption"
else puts "The hamster is not a good candidate for adoption"
end

puts "What's the estimated age?"
age = gets.to_i

if age.is_a? Integer
	puts "The estimated age of the hasmter is #{age}"
else puts "nil"
end
