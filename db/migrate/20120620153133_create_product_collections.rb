class CreateProductCollections < ActiveRecord::Migration
  def change
    create_table :product_collections do |t|
      t.integer :product_id
      t.integer :collection_id

      t.timestamps
    end
  end
end
