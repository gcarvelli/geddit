module PostsHelper

    def score_string(post)
        "(#{post.upvotes}, #{post.downvotes})"
    end
end
