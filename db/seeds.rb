# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
nerwin = User.create(email: 'nerwin@example.com', name: "Nerwin Hernando", password: 'password', password_confirmation: 'password')
io_gavin = User.create(email: 'io@example.com', name: "Io Gavin Hernando", password: 'password', password_confirmation: 'password')
ara = User.create(email: 'ara@example.com', name: "Ara Hernando", password: 'password', password_confirmation: 'password')

10.times do |x|
  Post.create(title: "Title of Blog #{x}", body: "Body #{x} Words go here Idk", user_id: ara.id)
end

10.times do |x|
  Post.create(title: "Title of Story #{x}", body: "Body #{x + 10} Words go here Idk", user_id: io_gavin.id)
end

10.times do |x|
  Post.create(title: "Title of Jokes #{x}", body: "Body #{x + 20} Words go here Idk", user_id: nerwin.id)
end
