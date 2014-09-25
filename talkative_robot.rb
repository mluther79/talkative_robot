require 'pry'

def print_greeting
puts "Greetings, Human!"
end

def get_user_info
	user = {}
	puts "What is your name? "
	user[:name] = gets.chomp
	puts "What is your age? "
	user[:age] = gets.chomp.to_i
	puts "what is your mood? "
	user[:mood] = gets.chomp.downcase
	puts "what is your gender? "
	user[:gender] = gets.chomp.upcase

	user
end

#def print_friendly_greeting(user)
#puts "Hi #{user[:name]} who is #{user[:age]} years old!"
#end

def relation_to_75(user)
	case 
	when user[:age] < 75
		years_from_75 = 75 - user[:age]
		puts "you'll be 75 in #{years_from_75} years"
	when user[:age] == 75
		puts "you are 75"
	when user[:age] > 75
		years_over_75 = user[:age] - 75 
		puts "you are over 75 by #{years_over_75} years"	
	end
end
def ask_user_about_nickname(user)
	first_initial = user[:name].chars.first
	answer = ask_user?("Do you mind if I call you #{first_initial} (yes or no)?")
	if answer
		puts "Okay, I will not call you that."
		user[:nickname] = user[:name]
	else
		puts "Cool, From now on I will call you #{first_initial}!"
		user[:nickname] = first_initial
	end
end

def if_your_a_grandparent(user)
	if user[:age] > 60 && user[:gender].upcase == "M"
		puts "Are you a grandfather"
	elsif user[:age] > 60 && user[:gender].upcase == "F" 
		puts "Are you a grandmother"
	else 
		puts "You probably aren't a grandparent"	
	end			
end

def if_your_a_young_child(user)
	if user[:age] < 18 && user[:gender].upcase == "M"
		puts "Are you a young boy"
	elsif [:age] < 18 && user[:gender].upcase == "F" 
		puts "Are you a young girl"
	else 
		puts "Your old"	
	end			
end

def grocery_list
	puts "== Let's go grocery shopping! =="
	grocery_list = ["butter", "bread", "water", "dog_food", "soda", "steak"]
	puts "Here is your grocery list: #{grocery_list.join(', ')}"
	while grocery_list.length > 0
		random_item = grocery_list.sample
		answer = ask_user?("Did you grab the #{random_item} (yes or no)? ")
		if answer
			grocery_list.delete(random_item)
		end
		puts "Now your grocery list is #{grocery_list.join(', ')}"
	end
end

def print_farewell(user)
puts "Farewell #{user[:nickname]}!"
end

print_greeting
the_user = get_user_info
#print_friendly_greeting(the_user)
ask_user_about_nickname(the_user)
print_age_based_message(the_user)
grocery_list
print_farewell(the_user)
