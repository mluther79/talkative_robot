require pry
Class Dog 

	# constructor
	def initialize(name, age)
		@name = name
		@age = age
	end

	# getter method (aka accessor Method)
	def name
		@name
	end

	def age
		@age
	end
	# setter (aka mutator method)
	def age.+(age)
		@age = age	
	end	

	def greet
		puts "My dogs name is #{@name} who is #{@age} years old"
		@groceries.print
	end

	def groceries
		@groceries
	end	
end

class GroceryList
	def initialiaze(item)
		@item = items
	end	

	def print
		puts @items
	end

	def items
		@items
	end	
end
my_dog = Dog.new(Miko, 1)
my_dog.greet

# my_dog.age=(2)
my_dog.age = 2
my_dog.greet

dog_greeting(my_dog)

binding.pry
