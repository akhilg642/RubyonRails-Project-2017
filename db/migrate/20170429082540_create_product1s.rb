class CreateProduct1s < ActiveRecord::Migration[5.0]
  def change
    create_table :product1s do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end
