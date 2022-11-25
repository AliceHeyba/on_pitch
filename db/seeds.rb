# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require 'faker'

# sports = ["Football", "Tennis", "Basketball", "Cricket", "Table Tennis", "Squash", "Badminton", "Paddel", "Golf", "Volleyball"]

# puts "creating 5 users and 50 pitches"
# 5.times do
#   user = User.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: "123456789"
#   )

#   2.times do
#     pitch = Pitch.new(
#       name: "#{Faker::Games::Heroes.name}'s Venue",
#       sport: sports.sample,
#       address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#       user: user
#     )
#       # pitch.user = user
#       pitch.save
#   end
# end
# puts 'Finished!'

# Booking.destroy_all
# Pitch.destroy_all
# User.destroy_all

# user1 = User.create!(email: "jack@gmail.com", password: "123456")
# user2 = User.create!(email: "alice@gmail.com", password: "123456")
# pitch = Pitch.create!(name: "Seed Tennis", sport: "Football", user_id: user1.id)

# Booking.create!(start_date: Date.yesterday, end_date: Date.yesterday, user: user2, pitch_id: pitch.id)
# Booking.create!(start_date: Date.tomorrow, end_date: Date.tomorrow, user: user2, pitch_id: pitch.id)
