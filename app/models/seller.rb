class Seller < ApplicationRecord
    has_one :shop
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :shop_name, presence: true, uniqueness: true
end
