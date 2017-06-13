class CreateWorkplaces < ActiveRecord::Migration[5.0]
  def change
    create_table :workplaces do |t|
      t.references :contact, foreign_key: true
      t.references :company, foreign_key: true
      t.boolean :main
      t.string :role
      t.string :email
      t.string :mobile
      t.string :direct_line
      t.string :address_one
      t.string :address_two
      t.integer :zipcode
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
