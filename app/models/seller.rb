require 'jwt'
class Seller < ApplicationRecord
    has_one :shop
    has_secure_password
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    
end
