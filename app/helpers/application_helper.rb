module ApplicationHelper

    def active(mod)
        mod == params[:action] ? 'class=active' : ''
    end
end
