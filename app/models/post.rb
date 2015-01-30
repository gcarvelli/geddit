class Post < ActiveRecord::Base

    belongs_to :user
    belongs_to :subgeddit

    before_validation(on: :create) do 
        self.slug = title.parameterize("_")
    end

    def score
        upvotes - downvotes
    end

    def pretty_link
        "/posts/#{slug}"
    end

end
