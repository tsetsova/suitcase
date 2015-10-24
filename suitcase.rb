suitcase = ["Sheep", "Bunny", "Tootbrush", "Travel Guide", "Passport"]
puts "Hi, I'm friendly suitcase! How can I help you today?"
puts "I only know a few commands. Would you like to add or remove an item? Or maybe display all current items?"
answer = gets.chomp.downcase
puts answer

def display_items(suitcase)
	suitcase.group_by {|item| item}.map {|name, items| [name, items.count]}.each do |name, count|
		puts "#{count} x #{name}"
	end
end

case answer
when "add"
	puts "What items would you like to add?"
	item = gets.chomp.capitalize
	if suitcase.include? item
		puts "Oh, it looks like you already have #{suitcase.count(item)} #{item}.."
		puts "Would you like to add another #{item}? Answer 'yes' or 'no'!"
		answer = gets.chomp.downcase
		suitcase.push(item) unless answer == "no"
		display_items(suitcase)
	else
		suitcase.push(item)
		puts "Your item has been added. Here are all your current items."
		display_items(suitcase)
	end
when "remove"
	puts "Oh no! Which item would you like me to remove?"
	item = gets.chomp.capitalize
	if suitcase.include? item
		suitcase.delete(item)
		display_items(suitcase)
	else
		puts "You must be confused... Your item isn't currently in your suitcase."
	end
when "display"
	display_items(suitcase)
end

