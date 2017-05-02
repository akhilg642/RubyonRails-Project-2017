class AddQuantityToLine1Items < ActiveRecord::Migration[5.0]
  def change
    add_column :line1_items, :quantity, :integer, default: 1
  end
end
