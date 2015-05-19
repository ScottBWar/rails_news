# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
Post.create(title: Faker::Commerce.product_name, body: Faker::Lorem.paragraph, user_id: 1)
end

5.times do
Post.create(title: Faker::Commerce.product_name, body: Faker::Lorem.paragraph, user_id: 2)
end

3.times do
Comment.create(content: Faker::Company.catch_phrase, user_id: 1, post_id: 2)
end

3.times do
Comment.create(content: Faker::Company.catch_phrase, user_id: 1, post_id: 6)
end

3.times do
Comment.create(content: Faker::Company.catch_phrase, user_id: 2, post_id: 1)
end
