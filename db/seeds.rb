# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  username  = Faker::Name.name
  User.create!(username: username)
end


users = User.all
3.times do
  name = Faker::Commerce.product_name
  description = Faker::Lorem.sentence(20)
  location = Faker::Address.city()
  date = Faker::Date.forward(30)
  users.each do |user|
    event = user.hosted_events.create!(location: location,
                                       date: date,
                                       name: name,
                                       description: description)
    (1..10).to_a.shuffle[0...3].each do |user_id|
      event.invitations.create!(user_id: user_id)
    end
  end
end
