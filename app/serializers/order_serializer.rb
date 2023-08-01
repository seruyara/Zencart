class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :total_price, :status, :payment_method, :shipping_adress
  belongs_to :customer
end
