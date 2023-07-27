class AddTagsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :tags, :text, array: true, default: '{}', using: "(string_to_array(tags, ','))"
  end
end
