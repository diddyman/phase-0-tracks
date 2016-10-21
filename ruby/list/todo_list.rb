
class TodoList
	attr_accessor :name1
	@name1 = []


	def initialize(name1)
	 	@name1 = name1
	end

	def get_items
		@name1
	end

	def add_item(x)
		@name1 << x
	end

	def delete_item(x)
		@name1.delete(x)
	end

	def get_item(x)
		@name1[x]

	end

end

# create a new list
# add new items to list
# move item from list
#  retrieve item by index




