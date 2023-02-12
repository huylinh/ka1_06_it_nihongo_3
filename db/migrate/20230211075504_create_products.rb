class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :category
      t.text :description
      t.integer :price
      t.string :img

      t.timestamps
    end
  end
end
