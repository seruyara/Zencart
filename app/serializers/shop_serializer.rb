class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  belongs_to :seller
  has_many :Products
end
