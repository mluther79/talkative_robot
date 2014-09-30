require 'pry'
require 'csv'

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

def print_friendly_greeting(the_user)
	puts "Hi #{the_user[:name]} who is #{the_user[:age]} years old!"
end

def relation_to_75(the_user)
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

def confirmation_answer?(answer)
	answer == "yes" || answer == "y" || answer == "yeah"
end

def ask_user_about_nickname(the_user)
	first_initial = the_user[:name].chars.first
	puts "Do you mind if I call you #{first_initial} (yes or no)?"
	answer = gets.chomp
	if confirmation_answer?(answer)
		puts "Okay, I will not call you that."
		the_user[:nickname] = the_user[:name]
	else
		puts "Cool, From now on I will call you #{first_initial}!"
		the_user[:nickname] = first_initial
	end
end

def if_your_a_grandparent(user)
	family_title = "grandfather" if user[:age] > 60 && user[:gender].upcase == "M"
	family_title = "grandmother" if user[:age] > 60 && user[:gender].upcase == "F"
	puts "Are you a #{family_title}?" if family_title
	puts "You probably aren't a grandparent." unless family_title
end

def if_your_a_young_child(user)
	child_title = "young_girl" if user[:age] < 18 && user[:gender].upcase == "F"
	child_title = "young_boy" if user[:age] < 18 && user[:gender].upcase == "M"
	puts "Are you a #{child_title}?" if child_title
	puts "You probably aren't a child." unless child_title
end

def grocery_shopping(grocery_list, user)
	puts "== Let's go grocery shopping! =="
	grocery_list= IO.write("grocery_list.txt", grocery_list.join(", "))
	grocery_list = IO.read("grocery_list.txt").split(',')
	puts "Here is your grocery list: #{grocery_list.join(', ')}"
	puts "You have #{grocery_list.length} items in your grocery list."
	until grocery_list.empty?
		random_item = grocery_list.sample
		puts "Did you grab the #{random_item} (yes or no)? "
		answer = gets.chomp
		if confirmation_answer?(answer)
			grocery_list.delete(random_item)
		end
		
		puts "Now your grocery list is.. #{grocery_list.join(', ')}"
	
		puts "Okay! sounds good, I will try not to forget your #{user[:drink]} when I go to the store later."
	
	grocery_list.unshift(user[:drink])

	user[:grocery_list] = grocery_list.each_index {|i| puts "Item #{i+1} -- #{grocery_list[i]}"}

	puts "Checkout my grocery list to make sure I got it right: #{user[:grocery_list]}."

	IO.write("grocery_list_2.txt", user[:grocery_list].join(", "))
	end
end

def writting_grocery_list(grocery_list)
	IO.write("grocery_list.txt", grocery_list.join(','))
end

def write_to_csv(grocery_list, any_csv_file)
	CSV.open(any_csv_file, "w") do |csv|
		csv << ["Number", "Item"]
		grocery_list.each_index { |index| csv << [index + 1, grocery_list[index]] }
	end
end

def read_from_csv(any_csv_file)
	#col_data0 = []
	col_data = []
	CSV.foreach(any_csv_file) { |row| col_data << row[1] }
	col_data
end	
    
def print_csv(col_data)
	puts "This is the current grocery list."
	puts col_data.join(",")
end


grocery_list = read_from_csv("groceries.csv")
print_csv(grocery_list)
write_to_csv(grocery_list, "groceries2.csv")

def recreation_question(user)
	puts "What do you do for recreation?"
	user[:recreation] = gets.chomp.downcase
	puts "Glad to hear you like #{user[:recreation]}, I thought you were going to say drawing! \n\n"
end

def drink_question(user)
	puts "What is your favorite drink?"
	user[:drink] = gets.chomp.downcase
	puts "Nice, I like #{user[:drink]} too!"
end

def select_by_name(array_of_users, full_name)
	puts "Here is some information about:"
	puts array_of_users.select { |person| person[:full_name] == full_name }.first.first
end

def author_info(person, array_of_persons)	
	puts "(The author of this program)"
	puts array_of_persons.reject { |person| person[:full_name] != "Michael Luther" }.first
	
end

author = { full_name: "Michael Luther", 
	first_name: "Michael", 
	last_name: "Luther", 
	gender_full: "Male", 
	gender_short: "m", 
	marital_status: "no", 
	marital_status_short: "n", 
	age: 34, 
	nickname_answer: "yes",
	nickname: "The Boss", drink: "Red Bull",
	recreation: "Snowboarding"
}

new_grocery_list = ["butter", "bread", "water", "dog_food", "soda", "steak"]
print_greeting
the_user = get_user_info

people = [the_user, author]

print_friendly_greeting(the_user)
ask_user_about_nickname(the_user)

if_your_a_grandparent(the_user)
if_your_a_young_child(the_user)
recreation_question(the_user)
drink_question(the_user)
writting_grocery_list(new_grocery_list)
grocery_shopping(new_grocery_list, the_user)
select_by_name(people, author[:full_name])
author_info(the_user, people)
