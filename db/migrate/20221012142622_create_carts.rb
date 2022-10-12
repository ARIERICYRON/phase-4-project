class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :Image_url

      t.timestamps
    end
  end
end
