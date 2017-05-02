class CreateLine1Items < ActiveRecord::Migration[5.0]
  def change
    create_table :line1_items do |t|
      t.integer :product1_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
