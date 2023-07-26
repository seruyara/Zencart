class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :seller_id
      t.string :description

      t.timestamps
    end
  end
end
