class ChangeAvailabilityToQuantityInProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :availability, :quantity
  end
end
