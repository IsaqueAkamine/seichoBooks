class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :product_category, index: true
      t.text :description

      t.timestamps
    end
  end
end
