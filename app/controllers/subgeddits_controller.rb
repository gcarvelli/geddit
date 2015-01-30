class SubgedditsController < ApplicationController

    def index
        @subgeddits = Subgeddit.all.order(:name)
    end

    def show
        if Subgeddit.all.find_by(id: params[:id]) != nil
            @subgeddit = Subgeddit.all.find_by(id: params[:id])
        elsif Subgeddit.all.find_by(name: params[:id]) != nil
            @subgeddit = Subgeddit.all.find_by(name: params[:id])
        end

        @posts = @subgeddit.posts
    end
end
