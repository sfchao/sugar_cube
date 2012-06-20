class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :status
      t.boolean :multiple_variant
      t.decimal :sale_price
      t.decimal :origin_price

      t.timestamps
    end
  end
end
