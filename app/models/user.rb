require 'bcrypt'

class User < ActiveRecord::Base
	has_many :answers, :questions, :votes
	has_many :comments, as: :commentable 
	


  validates :email, :hashed_password, presence: true
  validates :email, uniqueness: true


include BCrypt

def password
	@password ||= Password.new(self.hash_password)
end

def password=(new_password)
	@password = Password.create(new_password)
	self.hash_password = @password 
end

def authenticate(password)
	self.password == password
end 

end
