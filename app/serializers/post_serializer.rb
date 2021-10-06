class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  belongs_to :user
  has_many :comments
end
