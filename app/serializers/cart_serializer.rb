class CartSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_many :cart_items
  belongs_to :products, through: :cart_items
end
