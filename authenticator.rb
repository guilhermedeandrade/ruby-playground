users = [
  { username: 'guilherme', password: '123456' },
  { username: 'camila', password: '123456' },
  { username: 'mia', password: '123456' }
]

def auth_user(username, password, users)
  user_record = users.find { |user| user[:username] == username && user[:password] == password }

  user_record || 'Credentials were not correct'
end

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare password'

attempts = 1

while attempts < 4
  print 'Username: '
  username = gets.chomp

  print 'Password: '
  password = gets.chomp

  authentication = auth_user(username, password, users)
  puts authentication

  puts 'Press n to quit or any other key to continue: '
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1
end

puts 'You have exceeded the number of attempts' if attempts == 4
