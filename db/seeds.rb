# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

2.times do
    user = User.create(username: Faker::Twitter.screen_name)
    2.times do
        user.posts.create(title: Faker::Book.title, content: Faker::Lorem.paragraph)
    end
end

2.times do
    user = User.first
    user.comments.create(post_id: Post.first.id, text:Faker::Lorem.paragraph )
    user.comments.create(post_id: Post.second.id, text:Faker::Lorem.paragraph )
end
