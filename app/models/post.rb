class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    validates :title, :presence => true, :uniqueness => true
    validates :body, :presence => true
end
