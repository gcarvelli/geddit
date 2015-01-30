class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    has_many :posts
    has_many :comments
    has_many :subgeddits

    def link_text
        "/u/#{username}"
    end

    def to_s
        username
    end

end
