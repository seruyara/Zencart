class Product < ApplicationRecord
    belongs_to :shop
    has_many :cart_items
    has_and_belongs_to_many :categories
    has_many :variations
end
