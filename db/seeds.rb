
puts 'Cleaning database'
Restaurant.destroy_all

10.times do
  new_restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "created restaurant with id #{new_restaurant.id}"
end
puts "Finished!"
