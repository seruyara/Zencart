class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :quantity
      t.integer :total_price
      t.string :status
      t.string :payment_method
      t.string :shipping_adress
      t.date :date

      t.timestamps
    end
  end
end
