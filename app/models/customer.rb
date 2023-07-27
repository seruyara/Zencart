class Customer < ApplicationRecord
    has_one :cart 
    has_many :orders
    has_secure_password
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
end
