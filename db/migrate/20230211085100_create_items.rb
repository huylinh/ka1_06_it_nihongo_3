class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :quantity
      t.integer :price
      t.belongs_to :bill
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
