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
file_3 = URI.open('https://res.cloudinary.com/dbhyilorl/image/upload/v1647473775/UNADJUSTEDNONRAW_thumb_3299_ksetet.jpg')
file_4 = URI.open('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_5 = URI.open('https://res.cloudinary.com/dbhyilorl/image/upload/v1647386492/UNADJUSTEDNONRAW_thumb_33e1_dmfqhp.jpg')
file_6 = URI.open('https://res.cloudinary.com/dbhyilorl/image/upload/v1647386400/UNADJUSTEDNONRAW_mini_33da_wqks5c.jpg')
file_7 = URI.open('https://images.pexels.com/photos/1878522/pexels-photo-1878522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_8 = URI.open('https://images.pexels.com/photos/4992382/pexels-photo-4992382.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
file_9 = URI.open('https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
file_10 = URI.open('https://images.pexels.com/photos/5084203/pexels-photo-5084203.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_11 = URI.open('https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_12 = URI.open('https://images.pexels.com/photos/1036620/pexels-photo-1036620.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_13 = URI.open('https://images.pexels.com/photos/3094215/pexels-photo-3094215.jpeg')
file_14 = URI.open('https://images.pexels.com/photos/9890230/pexels-photo-9890230.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
file_15 = URI.open('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
file_16 = URI.open('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
file_17 = URI.open('https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
file_18 = URI.open('https://images.pexels.com/photos/1102341/pexels-photo-1102341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
file_19 = URI.open('https://images.pexels.com/photos/3222422/pexels-photo-3222422.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
file_20 = URI.open('https://images.pexels.com/photos/7276648/pexels-photo-7276648.jpeg?auto=compress&cs=tinysrgb&w=800')
file_21 = URI.open('https://images.pexels.com/photos/2291874/pexels-photo-2291874.jpeg?auto=compress&cs=tinysrgb&w=800')
file_22 = URI.open('https://images.pexels.com/photos/347134/pexels-photo-347134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
file_23 = URI.open('https://images.pexels.com/photos/7967346/pexels-photo-7967346.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
file_24 = URI.open('https://images.pexels.com/photos/4401645/pexels-photo-4401645.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
# names = %w[Christina Ray Joana Nasi Pooja Andrey Mel Daniel Tory Jess Ratna Shania]
# bios = ["New here, I would like to meet people to do sports with. Feel free to contact me!", "Hello, looking for buddies to do sports with :)"]

# names.each do |name|
#   User.create(user_name: name, email: "#{name}@gmail.com", bio: bios.sample, password: "123456", avatar: "https://ui-avatars.com/api/?name=#{name}", address: "Canggu, Bali")
# end

chris = User.create!(email: "christina@gmail.com", user_name: "Chris", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
ray = User.create!(email: "ray@gmail.com", user_name: "Ray", password: "123456", bio: "Hey there. I’m Ray, a web developer, I love coding but also going out and surfing. I’m a real pro!", address: "Canggu, Bali")
joana = User.create!(email: "joana@gmail.com", user_name: "Joana", password: "123456", bio: "I just arrived in Bali 2 months ago to learn coding. Looking for buddies to do sports with.", address: "Canggu, Bali")
nasi = User.create!(email: "nasi@gmail.com", user_name: "Nasi", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
andrey = User.create!(email: "andrey@gmail.com", user_name: "Andrey", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
tory = User.create!(email: "tory@gmail.com", user_name: "Tory", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
jess = User.create!(email: "jess@gmail.com", user_name: "Jess", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
pooja = User.create!(email: "pooja@gmail.com", user_name: "Pooja", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
shania = User.create!(email: "shania@gmail.com", user_name: "Shania", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")
mel = User.create!(email: "mel@gmail.com", user_name: "Mel", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
daniel = User.create!(email: "daniel@gmail.com", user_name: "Daniel", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
ratna = User.create!(email: "ratna@gmail.com", user_name: "Ratna", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
maria = User.create!(email: "maria@gmail.com", user_name: "Maria", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
john = User.create!(email: "john@gmail.com", user_name: "John", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
dirk = User.create!(email: "dirk@gmail.com", user_name: "Dirk", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
paul = User.create!(email: "paul@gmail.com", user_name: "Paul", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
melike = User.create!(email: "melike@gmail.com", user_name: "Melike", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
rose = User.create!(email: "rose@gmail.com", user_name: "Rose", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
ethan = User.create!(email: "ethan@gmail.com", user_name: "Ethan", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
matteo = User.create!(email: "matteo@gmail.com", user_name: "Matteo", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
lauren = User.create!(email: "lauren@gmail.com", user_name: "Lauren", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
rachel = User.create!(email: "rachel@gmail.com", user_name: "Rachel", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
monica = User.create!(email: "monica@gmail.com", user_name: "Monica", password: "123456", bio: "Hello, looking for buddies to do sports with.", address: "Canggu, Bali")
antoni = User.create!(email: "antoni@gmail.com", user_name: "Antoni", password: "123456", bio: "New here, I would like to meet people to do sports...", address: "Canggu, Bali")


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
maria.avatar.attach(io: file_13, filename:'nes.png', content_type: 'image/png')
john.avatar.attach(io: file_14, filename:'nes.png', content_type: 'image/png')
dirk.avatar.attach(io: file_15, filename:'nes.png', content_type: 'image/png')
paul.avatar.attach(io: file_16, filename:'nes.png', content_type: 'image/png')
melike.avatar.attach(io: file_17, filename:'nes.png', content_type: 'image/png')
rose.avatar.attach(io: file_18, filename:'nes.png', content_type: 'image/png')
ethan.avatar.attach(io: file_19, filename:'nes.png', content_type: 'image/png')
matteo.avatar.attach(io: file_20, filename:'nes.png', content_type: 'image/png')
lauren.avatar.attach(io: file_21, filename:'nes.png', content_type: 'image/png')
rachel.avatar.attach(io: file_22, filename:'nes.png', content_type: 'image/png')
monica.avatar.attach(io: file_23, filename:'nes.png', content_type: 'image/png')
antoni.avatar.attach(io: file_24, filename:'nes.png', content_type: 'image/png')
# sports = %w[Surfing Boxing Yoga Crossfit Running Hiking]

# spo`rts.each do |sport|
#   Event.create(title: "#{sport} with#{user.user_name}", description: "Let's go #{sport} together!", sports: sport)
# end

#SURF AM

event_1 = Event.create!(user_id: ray.id, title: "Surf with #{ray.user_name}", description: "Let's go surfing together", address: "Canggu, Bali", sport: "Surfing", date: Date.today, time_of_event: "8:00", number_of_participants: 5, morning: true)
user_event_1 = UserEvent.create!(user_id: chris.id, event_id: event_1.id)
user_event_3 = UserEvent.create!(user_id: nasi.id, event_id: event_1.id)
user_event_4 = UserEvent.create!(user_id: jess.id, event_id: event_1.id)

event_4 = Event.create!(user_id: mel.id, title: "Surf with #{mel.user_name}", description: "Let's go and surf together", address: "Canggu, Bali", sport: "Surfing", date: Date.tomorrow, time_of_event: "10:00", number_of_participants: 3, morning: true)
user_event_7 = UserEvent.create!(user_id: daniel.id, event_id: event_4.id)

#TENNIS AM
event_2 = Event.create!(user_id: andrey.id, title: "Tennis with #{andrey.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.today, time_of_event: "10:00", number_of_participants: 2, morning: true)

event_3 = Event.create!(user_id: pooja.id, title: "Tennis with #{pooja.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.tomorrow, time_of_event: "8:00", number_of_participants: 2, morning: true)
user_event_6 = UserEvent.create!(user_id: shania.id, event_id: event_3.id)

#SURF PM
event_5 = Event.create!(user_id: ray.id, title: "Surf with #{ray.user_name}", description: "Let's go surfing together", address: "Canggu, Bali", sport: "Surfing", date: Date.tomorrow, time_of_event: "16:00", number_of_participants: 5, afternoon: true)
user_event_9 = UserEvent.create!(user_id: chris.id, event_id: event_5.id)
user_event_11 = UserEvent.create!(user_id: nasi.id, event_id: event_5.id)
user_event_12 = UserEvent.create!(user_id: jess.id, event_id: event_5.id)

event_6 = Event.create!(user_id: daniel.id, title: "Surf with #{daniel.user_name}", description: "Let's go and surf together", address: "Canggu, Bali", sport: "Surfing", date: Date.tomorrow, time_of_event: "15:00", number_of_participants: 3, afternoon: true)
user_event_13 = UserEvent.create!(user_id: mel.id, event_id: event_6.id)
user_event_14 = UserEvent.create!(user_id: ratna.id, event_id: event_6.id)

#TENNIS PM
event_7 = Event.create!(user_id: tory.id, title: "Tennis with #{tory.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.tomorrow, time_of_event: "15:00", number_of_participants: 2, afternoon: true)

event_8 = Event.create!(user_id: nasi.id, title: "Tennis with #{nasi.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.tomorrow, time_of_event: "16:00", number_of_participants: 1, afternoon: true)

#TENNIS EVENING
event_9 = Event.create!(user_id: ratna.id, title: "Tennis with #{ratna.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.yesterday, time_of_event: "20:00", number_of_participants: 2, evening: true)
user_event_16 = UserEvent.create!(user_id: joana.id, event_id: event_9.id)

event_10 = Event.create!(user_id: jess.id, title: "Tennis with #{ray.user_name}", description: "Let's go and play tennis together", address: "Canggu, Bali", sport: "Tennis", date: Date.today, time_of_event: "20:00", number_of_participants: 2, evening: true)
user_event_17 = UserEvent.create!(user_id: shania.id, event_id: event_10.id)

# YOGA AM

event_11 = Event.create!(user_id: maria.id, title: "Yoga with #{maria.user_name}", description: "Let's do Yoga!", address: "Canggu, Bali", sport: "Yoga", date: Date.tomorrow, time_of_event: "08:00", number_of_participants: 3, morning: true)
user_event_18 = UserEvent.create!(user_id: joana.id, event_id: event_11.id)

event_12 = Event.create!(user_id: mel.id, title: "Yoga with #{mel.user_name}", description: "Yoga for beginners", address: "Canggu, Bali", sport: "Yoga", date: Date.tomorrow, time_of_event: "08:00", number_of_participants: 4, morning: true)
user_event_20 = UserEvent.create!(user_id: ratna.id, event_id: event_12.id)
user_event_21 = UserEvent.create!(user_id: andrey.id, event_id: event_12.id)
user_event_22 = UserEvent.create!(user_id: chris.id, event_id: event_12.id)

# YOGA EVENING
event_13 = Event.create!(user_id: john.id, title: "Yoga with #{john.user_name}", description: "Yoga for surfers", address: "Canggu, Bali", sport: "Yoga", date: Date.tomorrow, time_of_event: "19:00", number_of_participants: 2, evening: true)
user_event_23 = UserEvent.create!(user_id: dirk.id, event_id: event_13.id)

# SWIMMING  AM
event_14 = Event.create!(user_id: paul.id, title: "Swimming with #{paul.user_name}", description: "Swimming in the morning", address: "Canggu, Bali", sport: "Swimming", date: Date.tomorrow, time_of_event: "07:00", number_of_participants: 4, morning: true)
user_event_24 = UserEvent.create!(user_id: ray.id, event_id: event_14.id)
user_event_25 = UserEvent.create!(user_id: john.id, event_id: event_14.id)
user_event_26 = UserEvent.create!(user_id: melike.id, event_id: event_14.id)

# SWIMMING  Evening
event_15 = Event.create!(user_id: maria.id, title: "Swimming with #{maria.user_name}", description: "Sunset swimming", address: "Canggu, Bali", sport: "Swimming", date: Date.tomorrow, time_of_event: "18:00", number_of_participants: 2, evening: true)
user_event_27 = UserEvent.create!(user_id: melike.id, event_id: event_15.id)

# HIKING  AM
event_16 = Event.create!(user_id: rose.id, title: "Hiking with #{rose.user_name}", description: "Sunrise Hike!", address: "Canggu, Bali", sport: "Hiking", date: Date.tomorrow, time_of_event: "06:00", number_of_participants: 3, morning: true)
user_event_28 = UserEvent.create!(user_id: dirk.id, event_id: event_16.id)
user_event_29 = UserEvent.create!(user_id: ethan.id, event_id: event_16.id)

# BOXING EVENING
event_17 = Event.create!(user_id: ethan.id, title: "Boxing with #{ethan.user_name}", description: "Let's do boxing", address: "Canggu, Bali", sport: "Boxing", date: Date.today, time_of_event: "18:00", number_of_participants: 2, evening: true)
user_event_30 = UserEvent.create!(user_id: paul.id, event_id: event_17.id)

# BOXING AM
event_18 = Event.create!(user_id: tory.id, title: "Boxing with #{tory.user_name}", description: "Let's do boxing", address: "Canggu, Bali", sport: "Boxing", date: Date.tomorrow, time_of_event: "09:00", number_of_participants: 2, morning: true)
user_event_31 = UserEvent.create!(user_id: maria.id, event_id: event_18.id)

# CROSSFIT afternoon
event_19 = Event.create!(user_id: matteo.id, title: "Crossfit with #{matteo.user_name}", description: "Crossfit with me!", address: "Canggu, Bali", sport: "Crossfit", date: Date.today, time_of_event: "13:00", number_of_participants: 3, afternoon: true)
user_event_32 = UserEvent.create!(user_id: rose.id, event_id: event_19.id)
user_event_33 = UserEvent.create!(user_id: andrey.id, event_id: event_19.id)

# Crossfit Morning
event_20 = Event.create!(user_id: matteo.id, title: "Crossfit with #{matteo.user_name}", description: "Crossfit with me!", address: "Canggu, Bali", sport: "Crossfit", date: Date.tomorrow, time_of_event: "07:00", number_of_participants: 1, morning: true)
user_event_34 = UserEvent.create!(user_id: daniel.id, event_id: event_20.id)

# Running Morning
event_21 = Event.create!(user_id: lauren.id, title: "Run run run with #{lauren.user_name}", description: "Ready to run?", address: "Canggu, Bali", sport: "Running", date: Date.today, time_of_event: "06:00", number_of_participants: 2, morning: true)
user_event_35 = UserEvent.create!(user_id: rachel.id, event_id: event_21.id)

# Running Evening
event_22 = Event.create!(user_id: rachel.id, title: "Evening run with #{rachel.user_name}", description: "Sunset runner is here", address: "Canggu, Bali", sport: "Running", date: Date.tomorrow, time_of_event: "17:30", number_of_participants: 1, evening: true)

#Surf evening

event_23 = Event.create!(user_id: monica.id, title: "Surf with #{rachel.user_name}", description: "Sunset is the best for surfing", address: "Canggu, Bali", sport: "Surfing", date: Date.tomorrow, time_of_event: "17:30", number_of_participants: 1, evening: true)

# YOGA afternoon
event_24 = Event.create!(user_id: monica.id, title: "Vinyasa yoga with #{rachel.user_name}", description: "Yoga for everyone!", address: "Canggu, Bali", sport: "Yoga", date: Date.today, time_of_event: "13:30", number_of_participants: 2, afternoon: true)
user_event_36 = UserEvent.create!(user_id: ethan.id, event_id: event_24.id)

# Swimming afternoon
event_25 = Event.create!(user_id: lauren.id, title: "Swimming with #{rachel.user_name}", description: "All levels are welcome", address: "Canggu, Bali", sport: "Swimming", date: Date.tomorrow, time_of_event: "13:30", number_of_participants: 1, afternoon: true)

# boxing afternoon YESTERDAY
event_26 = Event.create!(user_id: antoni.id, title: "Boxing with #{antoni.user_name}", description: "All levels are welcome", address: "Canggu, Bali", sport: "Boxing", date: Date.yesterday, time_of_event: "13:30", number_of_participants: 2, afternoon: true)
user_event_37 = UserEvent.create!(user_id: joana.id, event_id: event_26.id)
user_event_38 = UserEvent.create!(user_id: melike.id, event_id: event_26.id)


#SURF AM YESTERDAY
event_1 = Event.create!(user_id: chris.id, title: "Surf with #{chris.user_name}", description: "Let's go surfing together", address: "Canggu, Bali", sport: "Surfing", date: Date.yesterday, time_of_event: "8:00", number_of_participants: 5, morning: true)
user_event_43 = UserEvent.create!(user_id: andrey.id, event_id: event_1.id)
user_event_44 = UserEvent.create!(user_id: nasi.id, event_id: event_1.id)
user_event_40 = UserEvent.create!(user_id: joana.id, event_id: event_1.id)

#SURF AM YESTERDAY
event_1 = Event.create!(user_id: andrey.id, title: "Surf with #{andrey.user_name}", description: "Let's go surfing together", address: "Canggu, Bali", sport: "Surfing", date: Date.yesterday, time_of_event: "7:00", number_of_participants: 5, morning: true)
user_event_43 = UserEvent.create!(user_id: melike.id, event_id: event_1.id)
user_event_44 = UserEvent.create!(user_id: nasi.id, event_id: event_1.id)
user_event_40 = UserEvent.create!(user_id: joana.id, event_id: event_1.id)

#chatrooms
chatroom_1 = Chatroom.create!(event_id: event_1.id)
chatroom_2 = Chatroom.create!(event_id: event_2.id)
chatroom_3 = Chatroom.create!(event_id: event_3.id)
chatroom_4 = Chatroom.create!(event_id: event_4.id)
chatroom_5 = Chatroom.create!(event_id: event_5.id)
chatroom_6 = Chatroom.create!(event_id: event_6.id)
chatroom_7 = Chatroom.create!(event_id: event_7.id)
chatroom_8 = Chatroom.create!(event_id: event_8.id)
chatroom_9 = Chatroom.create!(event_id: event_9.id)
chatroom_10 = Chatroom.create!(event_id: event_10.id)
chatroom_11 = Chatroom.create!(event_id: event_11.id)
chatroom_12 = Chatroom.create!(event_id: event_12.id)
chatroom_13 = Chatroom.create!(event_id: event_13.id)
chatroom_14 = Chatroom.create!(event_id: event_14.id)

#messages
message_1 = Message.create!(user_id: joana.id, content: "hi", chatroom_id: chatroom_1.id)


#friendship
joana.befriend ray
joana.befriend nasi
joana.befriend ratna
