class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.float :price
      t.integer :supplier_id
      t.string :image_url

      t.timestamps
    end
  end
end
