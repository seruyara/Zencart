class Variation < ApplicationRecord
  belongs_to :product
  attribute :values, :json
end
