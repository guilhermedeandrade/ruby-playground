p 'Simple calculator'
p '-------------------------------'
p 'Enter the first number'
first_num = gets.chomp
p 'Enter the second number'
second_num = gets.chomp

first_num_float = first_num.to_f
second_num_float = second_num.to_f

product = first_num_float * second_num_float
p "The first number multiplied by the second number is #{product}"

sum = first_num_float + second_num_float
p "The first number added by the second number is #{sum}"

difference = first_num_float - second_num_float
p "The first number minus the second number is #{difference}"

quotient = first_num_float / second_num_float
p "The first number divided by the second number is #{quotient}"

remainder = first_num_float % second_num_float
p "The remainder of the first number divided by the second number is #{remainder}"
