class FrontpageController < ApplicationController

    def index
        # need some kind of algorithm here
        @posts = Post.all
    end

    def top
        @posts = Post.all.sort_by { |x| -x.score }
        render 'index'
    end

    def new
        @posts = Post.all.order(created_at: :desc)
        render 'index'
    end

    def rising
        @posts = Post.all
        render 'index'
    end

    def controversial
        @posts = Post.all.sort_by { |x| x.score }
        render 'index'
    end
end
