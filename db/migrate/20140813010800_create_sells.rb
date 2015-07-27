class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.references :company, index: true
      t.references :user, index: true
      t.references :product, index: true
      t.float :price_total

      t.timestamps
    end
  end
end
