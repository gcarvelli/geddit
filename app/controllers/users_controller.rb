class UsersController < ApplicationController

    def index

    end

    def show
        if User.find_by(id: params[:id]) != nil
            @user = User.find_by(id: params[:id])
        elsif User.find_by(username: params[:id]) != nil
            @user = User.find_by(username: params[:id])
        end
        @posts = @user.posts
        @comments = @user.comments
    end
end
