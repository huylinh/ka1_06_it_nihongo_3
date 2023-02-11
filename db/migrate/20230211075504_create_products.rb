class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :category
      t.text :desciption
      t.integer :price
    end
  end
end
