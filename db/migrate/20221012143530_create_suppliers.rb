class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :quantity_left

      t.timestamps
    end
  end
end
