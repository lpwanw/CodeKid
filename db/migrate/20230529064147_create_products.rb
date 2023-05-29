class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :uid, null: false, index: { unique: true }
      t.bigint :price, null: false
      t.string :category, null: false

      t.timestamps
    end
  end
end
