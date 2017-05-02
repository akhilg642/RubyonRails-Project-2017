class CreateStudent6s < ActiveRecord::Migration[5.0]
  def change
    create_table :student6s do |t|
      t.string :Service
      t.string :Price
      t.date :Date
      t.time :Time

      t.timestamps
    end
  end
end
