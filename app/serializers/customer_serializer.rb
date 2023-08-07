class CustomerSerializer < ActiveModel::Serializer
attributes :id, :name, :email, :password,:password_confirmation
  has_one :cart
  has_many :orders
end
