

arr = [42, 89, 23, 1]
number = 23


# This method returns the index of an interger in an array
def search_array(arr, number)
	if arr.include?(number) == TRUE
		arr.find_index(number)
	else
		puts "Number is not within array - nil"
	end
end

search_array(arr, 42)

# Method for fibonacci
def Fib(n)

  array = []

  n.times do |e|
    if e == 0
      array[e] = 0
    elsif e == 1
      array[e] = 1
    else
      array[e] = array[e-1] + array[e-2]
    end  
  end

  return array.join(',')
end

puts Fib(6)