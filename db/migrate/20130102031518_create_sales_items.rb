class CreateSalesItems < ActiveRecord::Migration
  def change
    create_table :sales_items do |t|
      t.string :name
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
