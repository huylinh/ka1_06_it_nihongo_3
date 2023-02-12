class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.integer :size
      t.integer :quantity
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
