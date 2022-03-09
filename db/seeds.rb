# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = %w[Christina Ray Joana Nasi Pooja Andrey Mel Daniel Tory Jess Ratna Shania]
bios = ["New here, I would like to meet people to do sports with. Feel free to contact me!", "Hello, looking for buddies to do sports with :)"]

names.each do |name|
  User.create(user_name: name, email: "#{name}@gmail.com", bio: bios.sample, password: "123456", avatar: "https://ui-avatars.com/api/?name=#{name}", address: "Canggu")
end
