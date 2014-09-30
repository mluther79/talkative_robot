# def grocery_list(grocery_list)
# 	puts "== Let's go grocery shopping! =="
# 	# grocery_list= IO.write("grocery_list.txt", grocery_list.join(", "))
# 	grocery_list = IO.read("grocery_list.txt").split(',')
# 	puts "Here is your grocery list: #{grocery_list.join(', ')}"
# 	puts "You have #{grocery_list.length} items in your grocery list."
# 	until grocery_list.empty?
# 		random_item = grocery_list.sample
# 		puts "Did you grab the #{random_item} (yes or no)? "
# 		answer = gets.chomp
# 		if confirmation_answer?(answer)
# 			grocery_list.delete(random_item)
		
# 		# puts "Now your grocery list is.. #{grocery_list.join(', ')}"
	
# 		# puts "Okay! sounds good, I will try not to forget your #{user[:drink]} when I go to the store later."
	
# 	# grocery_list.unshift(user[:drink])

# 	# user[:grocery_list] = grocery_list.each_index {|i| puts "Item #{i+1} -- #{grocery_list[i]}"}

# 	# puts "Checkout my grocery list to make sure I got it right: #{user[:grocery_list]}."

# 	# IO.write("grocery_list_2.txt", user[:grocery_list].join(", "))
# 	end
# end

# # def writting_grocery_list(grocery_list)
# # 	IO.write("grocery_list.txt", grocery_list.join(','))
# # end

# def write_to_csv(grocery_list, any_csv_file)
# 	CSV.open(any_csv_file, "w") do |csv|
# 		csv << ["Number", "Item"]
# 		grocery_list.each_index { |index| csv << [index + 1, grocery_list[index]] }
# 	end
# end

# def read_from_csv(any_csv_file)
# 	#col_data0 = []
# 	col_data = []
# 	CSV.foreach('any_csv_file') { |row| col_data << row[1] }
# 	col_data
# end	
    
# def print_csv(col_data)
# 	puts "This is the current grocery list."
# 	col_data.shift
# 	puts col_data
# end

# grocery_list = read_from_csv
# print_csv(grocery_list)
# write_to_csv(grocery_list)

# new_grocery_list = ["butter", "bread", "water", "dog_food", "soda", "steak"]
