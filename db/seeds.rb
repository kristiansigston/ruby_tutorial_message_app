# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_messages = [
  { username: 'Geoff', password: 'password', message: 'message one' },
  { username: 'Mike', password: 'password', message: 'message two' },
  { username: 'Steve', password: 'password', message: 'message three' },
  { username: 'Simon', password: 'password', message: 'message four' },
  { username: 'Abdul', password: 'password', message: 'message five' },
  { username: 'Paula', password: 'password', message: 'message six' }
]


Message.destroy_all
User.destroy_all

user_messages.each do |user|
  puts user
  puts user[:username]
  User.create(username: user[:username], password: user[:password])
  Message.create(user_id: User.find_by(username: user[:username]).id, body: user[:message])
end
# User.create(username: "Geoff", password: "password")
# User.create(username: "Steve", password: "password")
# User.create(username: "Rayul", password: "password")
# User.create(username: "Mashrur", password: "password")
# User.create(username: "Peppi", password: "password")
# User.create(username: "Tiff", password: "password")

# Message.create(user_id: User.find_by(username: 'Geoff').id, body: 'Message one')
# Message.create(user_id: 2, body: 'Message two')
# Message.create(user_id: 3, body: 'Message three')
# Message.create(user_id: 4, body: 'Message four')
# Message.create(user_id: 5, body: 'Message five')
# Message.create(user_id: 6, body: 'Message six')
