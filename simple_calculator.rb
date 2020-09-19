def multiply(x, y)
  x * y
end

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def divide(x, y)
  x / y
end

def mod(x, y)
  x % y
end

p 'Simple calculator'
p '-------------------------------'
p 'Enter the first number'
first_num = gets.chomp
p 'Enter the second number'
second_num = gets.chomp

first_num_float = first_num.to_f
second_num_float = second_num.to_f

p 'What do you want to do?'
p 'Enter 1 for multiply, 2 for addition, 3 for subtraction, 4 for division, and 5 for mod'
user_entry = gets.chomp

if user_entry == '1'
  p 'You have chosen to multiply'

  product = multiply(first_num_float, second_num_float)
  p "The first number multiplied by the second number is #{product}"
elsif user_entry == '2'
  p 'You have chosen to add'

  sum = add(first_num_float, second_num_float)
  p "The first number added by the second number is #{sum}"
elsif user_entry == '3'
  p 'You have chosen to subtract'

  difference = subtract(first_num_float, second_num_float)
  p "The first number minus the second number is #{difference}"
elsif user_entry == '4'
  p 'You have chosen to divide'

  quotient = divide(first_num_float, second_num_float)
  p "The first number divided by the second number is #{quotient}"
elsif user_entry == '5'
  p 'You have chosen to mod'

  remainder = mod(first_num_float, second_num_float)
  p "The remainder of the first number divided by the second number is #{remainder}"
else
  p 'Invalid entry'
end
