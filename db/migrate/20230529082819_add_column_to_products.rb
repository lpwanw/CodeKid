# frozen_string_literal: true

class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    change_table :products, bulk: true do |t|
      t.string :status
      t.string :style
      t.string :line
      t.string :collection
      t.string :gender
    end
  end
end
