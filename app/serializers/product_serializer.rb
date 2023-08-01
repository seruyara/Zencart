class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image, :availability, :category
  belongs_to :shop
  has_many :cart_items
end
