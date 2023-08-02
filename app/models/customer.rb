require 'jwt'
class Customer < ApplicationRecord
    has_one :cart 
    has_many :orders
    has_secure_password
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    
    before_create :generate_authentication_token!

  def generate_authentication_token!
    # debugger
    JWT.encode self.attributes, nil, 'none'

    # self.token = SecureRandom.hex(32)
  end

  def reset_authentication_token!
    self.token = nil
  end

  def valid_authentication_token?(token)
    self.token == token
  end
end
