require 'bcrypt'

module Crud
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(users_list)
    users_list.each do |user|
      user[:password] = create_hash_digest(user[:password])
    end

    users_list
  end

  def authenticate_user(username, password, users_list)
    users_list.each do |user|
      return user if user[:username] == username && verify_hash_digest(user[:password]) == password
    end

    'Credentials not correct'
  end
end
