class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  belongs_to :product
  belongs_to :cart
end
