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

class User
	def initialize(args)
		@name = args[:name]
		@age = args[:age]
		@gender = args[:gender]
		@mood = args[:mood]
		@nickname = args[:nickname]
	end

	def print_friendly_greeting
		puts "Hi #{@name} who is #{the_user[:age]} years old!"
	end

	def ask_user_about_nickname(the_user)
		first_initial = @name.chars.first
		puts "Do you mind if I call you #{first_initial} (yes or no)?"
		answer = gets.chomp
	 if confirmation_answer?(answer)
		puts "Okay, I will not call you that."
		the_user[:nickname] = the_user[:name]
	else
		puts "Cool, From now on I will call you #{first_initial}!"
		the_user[:nickname] = first_initial
	end

	def if_your_a_grandparent
		family_title = "grandfather" if @age > 60 && @gender.upcase == "M"
		family_title = "grandmother" if @age > 60 && @gender.upcase == "F"
		puts "Are you a #{family_title}?" if family_title
		puts "You probably aren't a grandparent." unless family_title
	end

	def if_your_a_young_child
		child_title = "young_girl" if @age < 18 && @gender.upcase == "F"
		child_title = "young_boy" if @age < 18 && @gender.upcase == "M"
		puts "Are you a #{child_title}?" if child_title
		puts "You probably aren't a child." unless child_title
	end
end

print_greeting
user = get_user_info
the_user = User.new(user)				# new calls the initialize method
#the_user.print_friendly_greeting
the_user.ask_user_about_nickname
the_user.if_your_a_grandparent
the_user.if_your_a_young_child

