class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :shop_id
      t.string :description
      t.integer :price
      t.string :image
      t.string :availability
      t.string :category

      t.timestamps
    end
  end
end
