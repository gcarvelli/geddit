class PostsController < ApplicationController

    before_filter :authenticate_user!, only: [:new]

    def index
        @posts = Post.all.sort_by { |post| post.score }.reverse
    end

    def show
        if Post.find_by(id: params[:id]) != nil
            @post = Post.find_by(id: params[:id])
        elsif Post.find_by(slug: params[:id]) != nil
            @post = Post.find_by(slug: params[:id])
        end
        @subgeddit = @post.subgeddit
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params[:post].permit(:title, :link, :text))
        @post.upvotes = @post.downvotes = 0
        @post.user = current_user
        #<temp>
        @post.subgeddit = Subgeddit.first
        #</temp>
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end

    def upvote
        if signed_in?
            logger.info "current upvotes: #{Post.find(params[:id]).upvotes}"
            post = Post.find(params[:id])
            logger.info "upvoting..."
            post.upvotes += 1
            logger.info "new upvotes: #{post.upvotes}"
            post.save
            logger.info "saving..."
        end
    end

    def downvote
        if signed_in?
            logger.info "current upvotes: #{Post.find(params[:id]).upvotes}"
            post = Post.find(params[:id])
            logger.info "upvoting..."
            post.downvotes += 1
            logger.info "new upvotes: #{post.upvotes}"
            post.save
            logger.info "saving..."
        end
    end
end
