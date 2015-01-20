class User < ActiveRecord::Base

    has_many :posts
    has_many :subgeddits
    has_many :created_subgeddits, foreign_key: 'user_id', class_name: 'User'

    validates :username, presence: true, length: { minimum: 3 }

    def to_s
        username
    end
end
