# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "random_data"

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

uniquepost = Post.find_or_create_by(title: "Unique seeded post title", body: "Unique seeded post body")
Comment.find_or_create_by(body: "This comment is unique", post: uniquepost)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
