class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
  has_many :orders
end
