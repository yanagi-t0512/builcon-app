# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == 'development'
  (1..50).each do |i|
    Building.create(property_name: "物件#{i}", room_number: "#{i}号室", customer_name: "入居者#{i}")
  end
  # Building.create(property_name: "麻布十番ビル", room_number: "201号室", customer_name: "田中　花子")
end
