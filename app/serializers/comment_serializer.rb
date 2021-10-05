class CommentSerializer < ActiveModel::Serializer
  attributes :text, :user
  belongs_to :user
  belongs_to :post
end
