p 'Enter your first name'
first_name = gets.chomp

p 'Enter your last name'
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"

p "Your full name is #{full_name}"
p "Your full name reversed is #{full_name.reverse!}"
p "Your full name has #{full_name.length - 1} characters in it"
