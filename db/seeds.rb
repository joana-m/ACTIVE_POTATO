# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Message.destroy_all
Chatroom.destroy_all
UserEvent.destroy_all
Event.destroy_all
User.destroy_all

file_1 = URI.open('https://images.pexels.com/photos/995978/pexels-photo-995978.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
file_2 = URI.open('https://images.pexels.com/photos/839011/pexels-photo-839011.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_3 = URI.open('https://images.pexels.com/photos/5794559/pexels-photo-5794559.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file_4 = URI.open('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_5 = URI.open('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_6 = URI.open('https://images.pexels.com/photos/769772/pexels-photo-769772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_7 = URI.open('https://images.pexels.com/photos/1878522/pexels-photo-1878522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_8 = URI.open('https://images.pexels.com/photos/4992382/pexels-photo-4992382.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
file_9 = URI.open('https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file_10 = URI.open('https://images.pexels.com/photos/5084203/pexels-photo-5084203.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_11 = URI.open('https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_12 = URI.open('https://images.pexels.com/photos/1036620/pexels-photo-1036620.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
# names = %w[Christina Ray Joana Nasi Pooja Andrey Mel Daniel Tory Jess Ratna Shania]
# bios = ["New here, I would like to meet people to do sports with. Feel free to contact me!", "Hello, looking for buddies to do sports with :)"]

# names.each do |name|
#   User.create(user_name: name, email: "#{name}@gmail.com", bio: bios.sample, password: "123456", avatar: "https://ui-avatars.com/api/?name=#{name}", address: "Canggu, Bali")
# end

chris = User.create!(email: "christina@gmail.com", user_name: "Chris", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
ray = User.create!(email: "ray@gmail.com", user_name: "Ray", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
joana = User.create!(email: "joana@gmail.com", user_name: "Joana", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
nasi = User.create!(email: "nasi@gmail.com", user_name: "Nasi", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
andrey = User.create!(email: "andrey@gmail.com", user_name: "Andrey", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
tory = User.create!(email: "tory@gmail.com", user_name: "Tory", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
jess = User.create!(email: "jess@gmail.com", user_name: "Jess", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
pooja = User.create!(email: "pooja@gmail.com", user_name: "Pooja", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
shania = User.create!(email: "shania@gmail.com", user_name: "Shania", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
mel = User.create!(email: "mel@gmail.com", user_name: "Mel", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
daniel = User.create!(email: "daniel@gmail.com", user_name: "Daniel", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
ratna = User.create!(email: "ratna@gmail.com", user_name: "Ratna", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
# john = User.create!(email: "john@gmail.com", user_name: "John", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
# paul = User.create!(email: "paul@gmail.com", user_name: "Paul", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
# maria = User.create!(email: "maria@gmail.com", user_name: "Maria", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")


chris.avatar.attach(io: file_1, filename: 'nes.png', content_type: 'image/png')
ray.avatar.attach(io: file_2, filename: 'nes.png', content_type: 'image/png')
joana.avatar.attach(io: file_3, filename: 'nes.png', content_type: 'image/png')
nasi.avatar.attach(io: file_4, filename: 'nes.png', content_type: 'image/png')
andrey.avatar.attach(io: file_5, filename: 'nes.png', content_type: 'image/png')
tory.avatar.attach(io: file_6, filename: 'nes.png', content_type: 'image/png')
jess.avatar.attach(io: file_7, filename: 'nes.png', content_type: 'image/png')
pooja.avatar.attach(io: file_8, filename: 'nes.png', content_type: 'image/png')
shania.avatar.attach(io: file_9, filename: 'nes.png', content_type: 'image/png')
mel.avatar.attach(io: file_10, filename: 'nes.png', content_type: 'image/png')
daniel.avatar.attach(io: file_11, filename: 'nes.png', content_type: 'image/png')
ratna.avatar.attach(io: file_12, filename: 'nes.png', content_type: 'image/png')
# sports = %w[Surfing Boxing Yoga Crossfit Running Hiking]

# spo`rts.each do |sport|
#   Event.create(title: "#{sport} with#{user.user_name}", description: "Let's go #{sport} together!", sports: sport)
# end

#SURF AM

event_1 = Event.create!(user_id: chris.id, title: "Surf with #{chris.user_name}", description: "Let's go surfing together", address: "Canggu, Bali", sport: "Surfing", date: Date.today, time_of_event: "8:00", number_of_participants: 4, morning: true)
user_event_1 = UserEvent.create!(user_id: ray.id, event_id: event_1.id)
user_event_2 = UserEvent.create!(user_id: joana.id, event_id: event_1.id)
user_event_3 = UserEvent.create!(user_id: nasi.id, event_id: event_1.id)
user_event_4 = UserEvent.create!(user_id: jess.id, event_id: event_1.id)

event_4 = Event.create!(user_id: mel.id, title: "Surf with #{mel.user_name}", description: "Let's go and surf together", address: "Canggu, Bali", sport: "Surfing", date: Date.tomorrow, time_of_event: "10:00", number_of_participants: 3, morning: true)
user_event_7 = UserEvent.create!(user_id: daniel.id, event_id: event_4.id)
user_event_8 = UserEvent.create!(user_id: ratna.id, event_id: event_4.id)

#TENNIS AM
event_2 = Event.create!(user_id: andrey.id, title: "Tennis with #{andrey.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.today, time_of_event: "10:00", number_of_participants: 2, morning: true)
user_event_5 = UserEvent.create!(user_id: tory.id, event_id: event_2.id)

event_3 = Event.create!(user_id: pooja.id, title: "Tennis with #{pooja.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.tomorrow, time_of_event: "8:00", number_of_participants: 2, morning: true)
user_event_6 = UserEvent.create!(user_id: shania.id, event_id: event_3.id)

#SURF PM
event_5 = Event.create!(user_id: ray.id, title: "Surf with #{ray.user_name}", description: "Let's go surfing together", address: "Canggu, Bali", sport: "Surfing", date: Date.tomorrow, time_of_event: "16:00", number_of_participants: 4, afternoon: true)
user_event_9 = UserEvent.create!(user_id: chris.id, event_id: event_5.id)
user_event_10 = UserEvent.create!(user_id: joana.id, event_id: event_5.id)
user_event_11 = UserEvent.create!(user_id: nasi.id, event_id: event_5.id)
user_event_12 = UserEvent.create!(user_id: jess.id, event_id: event_5.id)

event_6 = Event.create!(user_id: daniel.id, title: "Surf with #{daniel.user_name}", description: "Let's go and surf together", address: "Canggu, Bali", sport: "Surfing", date: Date.tomorrow, time_of_event: "15:00", number_of_participants: 3, afternoon: true)
user_event_13 = UserEvent.create!(user_id: mel.id, event_id: event_6.id)
user_event_14 = UserEvent.create!(user_id: ratna.id, event_id: event_6.id)

#TENNIS PM
event_7 = Event.create!(user_id: tory.id, title: "Tennis with #{tory.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.tomorrow, time_of_event: "15:00", number_of_participants: 2, afternoon: true)
user_event_15 = UserEvent.create!(user_id: andrey.id, event_id: event_7.id)

event_8 = Event.create!(user_id: pooja.id, title: "Tennis with #{pooja.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.tomorrow, time_of_event: "16:00", number_of_participants: 2, afternoon: true)

#TENNIS EVENING
event_9 = Event.create!(user_id: pooja.id, title: "Tennis with #{pooja.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.yesterday, time_of_event: "20:00", number_of_participants: 2, evening: true)

user_event_16 = UserEvent.create!(user_id: jess.id, event_id: event_9.id)
user_event_17 = UserEvent.create!(user_id: ray.id, event_id: event_9.id)

event_10 = Event.create!(user_id: ray.id, title: "Tennis with #{ray.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.tomorrow, time_of_event: "20:00", number_of_participants: 2, evening: true)

#chatrooms
chatroom_1 = Chatroom.create!(event_id: event_6.id)

#messages
message_1 = Message.create!(user_id: ratna.id, content: "hi", chatroom_id: chatroom_1.id)


#friendship
joana.befriend ray
joana.befriend nasi
