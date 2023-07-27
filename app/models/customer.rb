class Customer < ApplicationRecord
    has_one :cart 
    has_many :orders
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
end
