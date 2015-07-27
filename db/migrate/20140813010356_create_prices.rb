class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.references :product, index: true
      t.references :company, index: true
      t.float :price
      t.date :starts_at
      t.date :end_at

      t.timestamps
    end
  end
end
