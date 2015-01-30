class Post < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :subgeddit

    validates :title, length: { maximum: 300 }
    validates :text, length: { maximum: 15000 }
    validates :link, presence: true

    before_validation(on: :create) do 
        self.slug = title.parameterize("_")

        logger.info "link before: #{link}"

        if link.to_s == ""
            self.link = pretty_link
        end

        logger.info "link after: #{link}"
    end

    def score
        upvotes - downvotes
    end

    def pretty_link
        "/posts/#{slug}"
    end

end
