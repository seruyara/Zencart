class VariationSerializer < ActiveModel::Serializer
  attributes :id, :name, :value

 belongs_to :product
end
