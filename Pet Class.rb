class Pet
	def initialize(name, age, gender, type, breed)
	  @name   = name
	  @age    = age
	  @gender = gender
	  @type   = type
	  @breed  = breed
	 end 
end	 
My_dog = Pet.new("Maverick", 3, "M", "dog", "boxer/gsp")

class Pet
	def initialize(args)
	  @name   = name
	  @age    = age
	  @gender = gender
	  @type   = type
	  @breed  = breed
	 end 
end	 
My_dog = Pet.new(name:"Maverick", age: 3, :gender"M", type:"dog", breed:"boxer/gsp)
