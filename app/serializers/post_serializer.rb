class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :created_at, :updated_at
  belongs_to :user
  has_many :comments
  has_many :comment_users
end
