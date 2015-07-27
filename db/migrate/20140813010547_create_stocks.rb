class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :company, index: true
      t.references :product, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
