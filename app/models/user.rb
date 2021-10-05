class User < ApplicationRecord
    validates_presence_of :username
    validates_uniqueness_of :username
    has_many :posts
end
