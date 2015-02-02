module ApplicationHelper

    def active(mod)
        mod == params[:action] && controller_name == "frontpage" ? 'class=active' : ''
    end
end
