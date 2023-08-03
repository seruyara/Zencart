class SellerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :password_confirmation, :shop_name
  has_one :shop
end
