class PostsController < ApplicationController

    def index
        @posts = Post.all.sort_by { |post| post.score }.reverse
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params[:post].permit(:title, :link, :text))
        @post.upvotes = @post.downvotes = 0
        #<temp>
        @post.subgeddit = Subgeddit.first
        @post.user = User.first
        #</temp>
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end

    def upvote
        logger.info "current upvotes: #{Post.find(params[:id]).upvotes}"
        post = Post.find(params[:id])
        logger.info "upvoting..."
        post.upvotes += 1
        logger.info "new upvotes: #{post.upvotes}"
        post.save
        logger.info "saving..."
        redirect_to post
    end

    def downvote
        logger.info "current upvotes: #{Post.find(params[:id]).upvotes}"
        post = Post.find(params[:id])
        logger.info "upvoting..."
        post.downvotes += 1
        logger.info "new upvotes: #{post.upvotes}"
        post.save
        logger.info "saving..."
        redirect_to post
    end
end
