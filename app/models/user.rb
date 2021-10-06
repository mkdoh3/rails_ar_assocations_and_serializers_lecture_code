class User < ApplicationRecord
    validates_presence_of :username
    validates_uniqueness_of :username
    has_many :posts
    has_many :comments
    has_many :commented_posts, through: :comments, source: :post

end
