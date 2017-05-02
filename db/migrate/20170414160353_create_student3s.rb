class CreateStudent3s < ActiveRecord::Migration[5.0]
  def change
    create_table :student3s do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Emailid
      t.string :Password
      t.string :PhoneNo
      t.string :City
      t.string :State
      t.string :Country
      t.string :AadharNo

      t.timestamps
    end
  end
end
