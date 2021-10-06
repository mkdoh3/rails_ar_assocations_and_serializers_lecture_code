class Post < ApplicationRecord
    validates_presence_of :title, :content
    belongs_to :user
    has_many :comments
    has_many :users, through: :comments
end
