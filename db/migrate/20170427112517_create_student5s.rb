class CreateStudent5s < ActiveRecord::Migration[5.0]
  def change
    create_table :student5s do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Emailid
      t.text :Password
      t.string :PhoneNo
      t.string :city
      t.string :State
      t.string :country
      t.string :AadharNo

      t.timestamps
    end
  end
end
