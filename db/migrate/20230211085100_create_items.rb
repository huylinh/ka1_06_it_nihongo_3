class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :quality
      t.belongs_to :user
      t.belongs_to :stock
      t.belongs_to :bill

      t.timestamps
    end
  end
end
