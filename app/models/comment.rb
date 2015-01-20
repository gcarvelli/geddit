class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    belongs_to :comment

    def score
        upvotes - downvotes
    end
end
