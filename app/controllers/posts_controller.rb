class PostsController < ApplicationController

    def index
        @posts = Post.all.order(score: :desc)
    end

    def show
        @post = Post.find(params[:id])
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
