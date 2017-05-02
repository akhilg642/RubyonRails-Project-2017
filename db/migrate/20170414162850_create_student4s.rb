class CreateStudent4s < ActiveRecord::Migration[5.0]
  def change
    create_table :student4s do |t|
      t.string :Service
      t.string :Price
      t.date :Date
      t.time :Time

      t.timestamps
    end
  end
end
