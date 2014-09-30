require 'pry'

class Person 
  def initialize(args)
    @name = args[:name]
    @age = args[:age]
    @gender = args[:gender] 
  end	
end

class Author < Person
  def initialize(args)
    super (args)
    @author = true 
  end 
end

class User < Person
  def initialize(args)
	  @name = args[:name]
	  @age = args[:age]
	  @gender = args[:gender] 
  end

  def self.get_info
    user = {}
    puts "What is your name?"
    user[:name] = gets.chomp
    # user

    puts "What is your age?"
    user[:age] = gets.chomp.to_i
    # user

    puts "What is your gender?"
    user[:gender] = gets.chomp
    user
  end
    
  def name
    @name
  end  

  def age
    @age
  end

  def gender
    @gender
  end  

  def user_name
    self.name
  end

  attr_accessor :name
  attr_accessor :age
  attr_accessor :gender

end

# binding.pry

user_info = User.get_info
@user = User.new(user_info)
@user.user_name


