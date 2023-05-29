class CreateProductInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_inventories do |t|
      t.references :product, null: false, foreign_key: true
      t.string :size
      t.integer :quantity, null: false
      t.string :color

      t.timestamps
    end

    add_index :product_inventories, [:product_id, :size, :color], unique: true
  end
end
