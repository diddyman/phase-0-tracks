#module Shout
#	def self.yell_angrily(words)
 #       words + "!!!" + " :("
#	end

#	def self.yelling_happily
#		"This is cool!"
#	end
#end

#p Shout.yell_angrily("Baby")
#p Shout.yelling_happily

module Swim
	def swimmer(speed)
		puts "I'm swimming at #{speed} per hour"
	end
end

class Fish
	include Swim
end

class Human
	include Swim
end

swim = Fish.new
swim.swimmer(1000)

human = Fish.new
human.swimmer(500)