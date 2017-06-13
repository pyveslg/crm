class Contact < ApplicationRecord
  has_many :workplaces
  has_many :companies, through: :workplaces

  geocoded_by :address
  after_validation :geocode, if: :address_one_changed?


  def address
  [address_one, zipcode, country].compact.join(', ')
end
end
