class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :quantity, :variations, :tags, :category_id
  belongs_to :shop
  belongs_to :category
  has_many :variations
  has_many :cart_items
end
