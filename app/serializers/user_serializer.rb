class UserSerializer < ActiveModel::Serializer
  attributes :username
  has_many :posts
  has_many :commented_posts
end
