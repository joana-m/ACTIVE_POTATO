# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

UserEvent.destroy_all
Event.destroy_all
User.destroy_all

file_1 = URI.open('https://ui-avatars.com/api/?name=christina')
file_2 = URI.open('https://ui-avatars.com/api/?name=ray')
file_3 = URI.open('https://ui-avatars.com/api/?name=joana')
file_4 = URI.open('https://ui-avatars.com/api/?name=nasi')
file_5 = URI.open('https://ui-avatars.com/api/?name=andrey')
file_6 = URI.open('https://ui-avatars.com/api/?name=tory')
file_7 = URI.open('https://ui-avatars.com/api/?name=jess')
file_8 = URI.open('https://ui-avatars.com/api/?name=pooja')
file_9 = URI.open('https://ui-avatars.com/api/?name=shania')
file_10 = URI.open('https://ui-avatars.com/api/?name=mel')
file_11 = URI.open('https://ui-avatars.com/api/?name=daniel')
file_12 = URI.open('https://ui-avatars.com/api/?name=ratna')
# names = %w[Christina Ray Joana Nasi Pooja Andrey Mel Daniel Tory Jess Ratna Shania]
# bios = ["New here, I would like to meet people to do sports with. Feel free to contact me!", "Hello, looking for buddies to do sports with :)"]

# names.each do |name|
#   User.create(user_name: name, email: "#{name}@gmail.com", bio: bios.sample, password: "123456", avatar: "https://ui-avatars.com/api/?name=#{name}", address: "Canggu")
# end

user_1 = User.create!(email: "christina@gmail.com", user_name: "Christina", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu")
user_2 = User.create!(email: "ray@gmail.com", user_name: "Ray", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu")
user_3 = User.create!(email: "joana@gmail.com", user_name: "Joana", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu")
user_4 = User.create!(email: "nasi@gmail.com", user_name: "Nasi", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu")
user_5 = User.create!(email: "andrey@gmail.com", user_name: "Andrey", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu")
user_6 = User.create!(email: "tory@gmail.com", user_name: "Tory", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu")
user_7 = User.create!(email: "jess@gmail.com", user_name: "Jess", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu")
user_8 = User.create!(email: "pooja@gmail.com", user_name: "Pooja", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu")
user_9 = User.create!(email: "shania@gmail.com", user_name: "Shania", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu")
user_10 = User.create!(email: "mel@gmail.com", user_name: "Mel", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu")
user_11 = User.create!(email: "daniel@gmail.com", user_name: "Daniel", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu")
user_12 = User.create!(email: "ratna@gmail.com", user_name: "Ratna", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu")

user_1.avatar.attach(io: file_1, filename: 'nes.png', content_type: 'image/png')
user_2.avatar.attach(io: file_2, filename: 'nes.png', content_type: 'image/png')
user_3.avatar.attach(io: file_3, filename: 'nes.png', content_type: 'image/png')
user_4.avatar.attach(io: file_4, filename: 'nes.png', content_type: 'image/png')
user_5.avatar.attach(io: file_5, filename: 'nes.png', content_type: 'image/png')
user_6.avatar.attach(io: file_6, filename: 'nes.png', content_type: 'image/png')
user_7.avatar.attach(io: file_7, filename: 'nes.png', content_type: 'image/png')
user_8.avatar.attach(io: file_8, filename: 'nes.png', content_type: 'image/png')
user_9.avatar.attach(io: file_9, filename: 'nes.png', content_type: 'image/png')
user_10.avatar.attach(io: file_10, filename: 'nes.png', content_type: 'image/png')
user_11.avatar.attach(io: file_11, filename: 'nes.png', content_type: 'image/png')
user_12.avatar.attach(io: file_12, filename: 'nes.png', content_type: 'image/png')
# sports = %w[Surfing Boxing Yoga Crossfit Running Hiking]

# sports.each do |sport|
#   Event.create(title: "#{sport} with#{user.user_name}", description: "Let's go #{sport} together!", sports: sport)
# end

#SURF AM
event_1 = Event.create!(user_id: user_1.id, title: "Surf with #{user_1.user_name}", description: "Let's go surfing together", address: "Canggu", sports: ["Surfing"], date: Date.tomorrow, time_of_event: "8:00", number_of_participants: 4, morning: true)
user_event_1 = UserEvent.create!(user_id: user_2.id, event_id: event_1.id)
user_event_2 = UserEvent.create!(user_id: user_3.id, event_id: event_1.id)
user_event_3 = UserEvent.create!(user_id: user_4.id, event_id: event_1.id)
user_event_4 = UserEvent.create!(user_id: user_7.id, event_id: event_1.id)

event_4 = Event.create!(user_id: user_10.id, title: "Surf with #{user_10.user_name}", description: "Let's go and surf together", address: "Canggu", sports: ["Surf"], date: Date.tomorrow, time_of_event: "10:00", number_of_participants: 3, morning: true)
user_event_7 = UserEvent.create!(user_id: user_11.id, event_id: event_4.id)
user_event_8 = UserEvent.create!(user_id: user_12.id, event_id: event_4.id)

#TENNIS AM
event_2 = Event.create!(user_id: user_5.id, title: "Tennis with #{user_5.user_name}", description: "Let's go and play tennis together", address: "Canggu", sports: ["Tennis"], date: Date.tomorrow, time_of_event: "10:00", number_of_participants: 2, morning: true)
user_event_5 = UserEvent.create!(user_id: user_6.id, event_id: event_2.id)

event_3 = Event.create!(user_id: user_8.id, title: "Tennis with #{user_8.user_name}", description: "Let's go and play tennis together", address: "Canggu", sports: ["Tennis"], date: Date.tomorrow, time_of_event: "8:00", number_of_participants: 2, morning: true)
user_event_6 = UserEvent.create!(user_id: user_9.id, event_id: event_3.id)


#SURF PM
event_5 = Event.create!(user_id: user_2.id, title: "Surf with #{user_2.user_name}", description: "Let's go surfing together", address: "Canggu", sports: ["Surfing"], date: Date.tomorrow, time_of_event: "16:00", number_of_participants: 4, afternoon: true)
user_event_9 = UserEvent.create!(user_id: user_1.id, event_id: event_5.id)
user_event_10 = UserEvent.create!(user_id: user_3.id, event_id: event_5.id)
user_event_11 = UserEvent.create!(user_id: user_4.id, event_id: event_5.id)
user_event_12 = UserEvent.create!(user_id: user_7.id, event_id: event_5.id)

event_6 = Event.create!(user_id: user_11.id, title: "Surf with #{user_11.user_name}", description: "Let's go and surf together", address: "Canggu", sports: ["Surf"], date: Date.tomorrow, time_of_event: "15:00", number_of_participants: 3, afternoon: true)
user_event_13 = UserEvent.create!(user_id: user_10.id, event_id: event_6.id)
user_event_14 = UserEvent.create!(user_id: user_12.id, event_id: event_6.id)

#TENNIS PM
event_7 = Event.create!(user_id: user_6.id, title: "Tennis with #{user_6.user_name}", description: "Let's go and play tennis together", address: "Canggu", sports: ["Tennis"], date: Date.tomorrow, time_of_event: "15:00", number_of_participants: 2, afternoon: true)
user_event_15 = UserEvent.create!(user_id: user_5.id, event_id: event_7.id)

event_8 = Event.create!(user_id: user_8.id, title: "Tennis with #{user_8.user_name}", description: "Let's go and play tennis together", address: "Canggu", sports: ["Tennis"], date: Date.tomorrow, time_of_event: "16:00", number_of_participants: 2, afternoon: true)

#TENNIS EVENING
event_9 = Event.create!(user_id: user_8.id, title: "Tennis with #{user_8.user_name}", description: "Let's go and play tennis together", address: "Canggu", sports: ["Tennis"], date: Date.tomorrow, time_of_event: "20:00", number_of_participants: 2, evening: true)
user_event_16 = UserEvent.create!(user_id: user_7.id, event_id: event_9.id)

event_10 = Event.create!(user_id: user_2.id, title: "Tennis with #{user_2.user_name}", description: "Let's go and play tennis together", address: "Canggu", sports: ["Tennis"], date: Date.tomorrow, time_of_event: "20:00", number_of_participants: 2, evening: true)
