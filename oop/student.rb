require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, E-mail: #{@email}"
  end
end

guilherme = Student.new('guilherme', 'andrade', 'andrade@email.com', 'gandrade', 'afdaklfja098d')

hashed_password = guilherme.create_hash_digest(guilherme.password)

puts hashed_password
