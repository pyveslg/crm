class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address_one
      t.string :address_two
      t.integer :zipcode
      t.string :city
      t.string :country
      t.string :std_phone
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
