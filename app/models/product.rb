class Product < ApplicationRecord
    belongs_to :shop
    has_many :cart_items
    has_many :carts, through: :cart_items

    belongs_to :category
    has_many :variations
end
