require 'pry'
def get_name
puts "what is you name?"
return gets.chomp	
end

def get_mood
	puts "what is your mood?"
	return gets.chomp.downcase
end

def get_age
	puts "what's your age?"
	return gets.chomp.to_i
end


def relation_to_75(age)
	case 
	when age < 75
		puts "you'll be 75 in #{75 - age}"
	when age == 75
		puts "you are 75"
	when age > 75 
		puts "you turned 75 #{age - 75}"	
	end
end

def if_your_a_grandparent(age,gender)
	if age > 60 && gender.upcase == "M"
		puts "Are you a grandfather"
	elsif age > 60 && gender.upcase == "F" 
		puts "Are you a grandmother"
	else 
		puts "You probably aren't a grandparent"	
	end			
end

def if_your_a_young_child(age,gender)
	if age < 18 && gender.upcase == "M"
		puts "Are you a young boy"
	elsif age < 18 && gender.upcase == "F" 
		puts "Are you a young girl"
	else 
		puts "Your old"	
	end			
end


puts "Test message"
puts "We're runing this in terminal"

user_name = get_name

puts "Hey #{user_name}, sup?"

mood = get_mood
puts "Glad to hear you're #{mood}!"

user_age = get_age

puts "Hi #{user_name} who is #{user_age}"

puts "What is your gender? M)ale or F)emale: "
answer = gets.chomp.upcase
if_your_a_grandparent(user_age,answer)
if_your_a_young_child(user_age,answer)


puts "M" == answer ? "Hi, fella" : "Hello, lady"

puts ((user_age <21 ? "You're too young" : "Go get drink"))

grocery_list = ["butter", "bread", "water", "dog_food", "soda", "steak"]
item = grocery_list[rand(grocery_list.length + 1)]
puts "Did you grab the #{item}?"
grocery_list.delete(item)
puts "Oh yeah,don't forget:"
new_item = gets.chomp
grocery_list << new_item
grocery_list.each do |item|
puts item
end 
