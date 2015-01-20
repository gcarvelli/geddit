class Subgeddit < ActiveRecord::Base

    belongs_to :user
    has_many :posts

    validates :name, presence: true, length: { minimum: 3 }
    validates :user, presence: true 

    def to_s
        "/g/#{name}"
    end
end
