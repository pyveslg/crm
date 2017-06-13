class Company < ApplicationRecord
  has_many :addresses
  has_many :workplaces
  has_many :contacts, through: :workplaces
end
