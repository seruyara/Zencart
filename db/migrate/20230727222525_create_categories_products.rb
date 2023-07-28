# db/migrate/timestamp_create_categories_products.rb

class CreateCategoriesProducts < ActiveRecord::Migration[7.0]
  def up
    create_table :categories_products, id: false do |t|
      t.belongs_to :category
      t.belongs_to :product
    end

    add_index :categories_products, [:category_id, :product_id], unique: true
  end

  def down
    drop_table :categories_products
  end
end
