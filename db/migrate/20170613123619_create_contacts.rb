class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :part
      t.string :title
      t.string :gender
      t.date :date_of_birth
      t.integer :estimated_year_of_birth
      t.string :linkedin
      t.string :email
      t.string :mobile
      t.string :address_one
      t.string :address_two
      t.integer :zipcode
      t.string :city
      t.string :country
      t.string :profile_pic_url

      t.timestamps
    end
  end
end
