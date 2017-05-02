class CreateStudent7s < ActiveRecord::Migration[5.0]
  def change
    create_table :student7s do |t|
      t.string :PhoneNo

      t.timestamps
    end
  end
end
