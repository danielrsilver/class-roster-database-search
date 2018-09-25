# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  "Web Development",
  "iOS Development"
].each do |course_name|
  Course.find_or_create_by(name: course_name)
end

[
  "Fred",
  "Barney",
  "Wilma",
  "Stephanie",
  "Tim",
  "Jacob"
].each do |name|
  u = User.find_or_create_by(
        name: name,
        email: "#{name}@fake.email"
      )
  u.update(course: Course.all.sample)
end

puts "#{Course.count} courses!"
puts "#{User.count} users!"
