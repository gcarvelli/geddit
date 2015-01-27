class Subgeddit < ActiveRecord::Base

    belongs_to :user
    has_many :posts

    validates :name, presence: true, length: { minimum: 3 }
    validates :user, presence: true

    def link_text
        "/g/#{name}"
    end

    def to_s
        link_text
    end
end
