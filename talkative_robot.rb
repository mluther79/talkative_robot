require 'pry'

puts "Test message"
puts "We're runing this in terminal"

puts "what is you name?"
user_name = gets.chomp


puts "Hey #{user_name}, sup?"
puts "How are you doing?"

mood = gets.chomp
mood.chomp.downcase!

puts "Glad to hear you're #{mood}"
puts "what's your age bro?"
user_age = gets.chomp.to_i
puts "Hi #{user_name} who is #{user_age}"

print "What is your gender? M)ale or F)emale: "
answer = gets.chomp.upcase

puts "M" == answer ? "Hi, fella" : "Hello, lady"

puts ((user_age <21 ? "You're too young" : "Go drink"))


