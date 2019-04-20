# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if(User.count == 0)
  User.create(
    name: 'Admin User',
    email_address: 'admin@admin.com',
    password: 'password123',
    password_confirmation: 'password123'
  )
end

if(Room.count == 0)
  Room.create(
    name: 'General',
    visible: true
  )
end
