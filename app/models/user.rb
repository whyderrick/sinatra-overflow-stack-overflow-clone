require 'bcrypt'

class User < ActiveRecord::Base
  has_many :questions, foreign_key: :asker_id
  has_many :answers, foreign_key: :responder_id
	has_many :comments, foreign_key: :commenter_id
  has_many :votes, foreign_key: :voter_id



  validates :email, :hash_password, presence: true
  validates :email, uniqueness: true


  include BCrypt

  def password
  	@password ||= Password.new(self.hash_password)
  end

  def password=(new_password)
  	@password = Password.create(new_password)
  	self.hash_password = @password
  end

  def authenticate(input_password)
    unless self.hash_password == input_password
    # Not clear on how to make this actually serve its errors to the view on failed auth.
  end

end
