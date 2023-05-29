class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    change_table :products, bulk: true do |t|
      t.string :status
      t.string :style
      t.string :line
      t.string :collection
    end
  end
end
