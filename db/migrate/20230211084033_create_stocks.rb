class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.integer :size
      t.integer :quality
      t.belongs_to :product, foreign_key: true
      
      t.timestamps
    end
  end
end
