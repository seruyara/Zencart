class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :quantity, :variations, :tags, :category
  belongs_to :shop
  has_many :cart_items
end
