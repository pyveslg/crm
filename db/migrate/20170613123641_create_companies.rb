class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :turnover
      t.string :logo_url
      t.string :domain
      t.string :website
      t.string :company_type
      t.integer :employees
      t.boolean :provider

      t.timestamps
    end
  end
end
