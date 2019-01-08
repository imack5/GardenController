# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

garden = Garden.create!(name: "Home", lat: 44.326778, lng: -78.373717)

category = Category.create!(name: "Succulent", moisture_level: 30)

device1 = Device.create!(uuid: "123456789", garden: garden)

plant = Plant.create!(name: "Lil' Pete", garden: garden, category: category, device: device1)

announce_message = AnnounceMessage.create!(message: "40", device: device1)

moisture_level = MoistureLevel.create!(reading: 40, device: device1)