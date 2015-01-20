class Post < ActiveRecord::Base

    belongs_to :user
    belongs_to :subgeddit

    def score
        upvotes - downvotes
    end
end
