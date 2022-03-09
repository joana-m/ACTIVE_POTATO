# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
UserEvent.destroy_all

# names = %w[Christina Ray Joana Nasi Pooja Andrey Mel Daniel Tory Jess Ratna Shania]
# bios = ["New here, I would like to meet people to do sports with. Feel free to contact me!", "Hello, looking for buddies to do sports with :)"]

# names.each do |name|
#   User.create(user_name: name, email: "#{name}@gmail.com", bio: bios.sample, password: "123456", avatar: "https://ui-avatars.com/api/?name=#{name}", address: "Canggu")
# end

user_1 = User.create!(email: "christina@gmail.com", user_name: "Christina", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu", avatar: "https://ui-avatars.com/api/?name=Christina")
user_2 = User.create!(email: "ray@gmail.com", user_name: "Ray", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu", avatar: "https://ui-avatars.com/api/?name=Ray")
user_3 = User.create!(email: "joana@gmail.com", user_name: "Joana", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu", avatar: "https://ui-avatars.com/api/?name=Joana")
user_4 = User.create!(email: "nasi@gmail.com", user_name: "Nasi", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu", avatar: "https://ui-avatars.com/api/?name=Nasi")
user_5 = User.create!(email: "pooja@gmail.com", user_name: "Pooja", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu", avatar: "https://ui-avatars.com/api/?name=Pooja")

# sports = %w[Surfing Boxing Yoga Crossfit Running Hiking]

# sports.each do |sport|
#   Event.create(title: "#{sport} with#{user.user_name}", description: "Let's go #{sport} together!", sports: sport)
# end

#SURF WITH CHRISTINA
event_1 = Event.create!(user_id: user_1, title: "Surf with #{user_1.user_name}", description: "Let's go surfing together")
user_event_1 = User_events.create!(user_id: user_2, event_id: event_1)
user_event_2 = User_events.create!(user_id: user_3, event_id: event_1)
user_event_3 = User_events.create!(user_id: user_4, event_id: event_1)
