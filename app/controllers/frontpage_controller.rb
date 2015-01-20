class FrontpageController < ApplicationController

    def index
        @posts = Post.all
        #logger.info user_logged_in?
    end
end
