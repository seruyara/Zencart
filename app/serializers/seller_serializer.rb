class SellerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :shop_name
  has_one :shop
end
