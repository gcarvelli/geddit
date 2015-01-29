class SubgedditsController < ApplicationController

    def index

    end

    def show
        if Subgeddit.all.find_by(id: params[:id]) != nil
            @sub = Subgeddit.all.find_by(id: params[:id])
        elsif Subgeddit.all.find_by(name: params[:id]) != nil
            @sub = Subgeddit.all.find_by(name: params[:id])
        end

        @posts = @sub.posts
    end
end
