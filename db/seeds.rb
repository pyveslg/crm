# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "pyves.lg@gmail.com", password: "1234567", password_confirmation: "1234567")


Contact.create(
  first_name: "Pierre-Yves",
  last_name: "Le Guennec",
  part: "",
  title: "Monsieur",
  gender: "male",
  date_of_birth: Date.new(1985,05,01),
  estimated_year_of_birth: 1985,
  linkedin: "https://www.linkedin.com/in/pierre-yvesleguennec/",
  email: "py.lg@gmail.com",
  mobile: "0677027198",
  address_one: "58 rue de la Fontaine au Roi",
  address_two: "Apt.14",
  zipcode: 75011,
  city: "paris",
  country: "france",
  profile_pic_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAvJAAAAJGE5MmFkMmJkLWIwOWMtNGU4My1iNzljLTAxMjAyM2RhNWFkNA.jpg"
)
