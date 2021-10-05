# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

10.times do
    user = User.create(username: Faker::Twitter.screen_name)
    10.times do
        user.posts.create(title: Faker::Book.title, content: Faker::Lorem.paragraph)
    end
end
