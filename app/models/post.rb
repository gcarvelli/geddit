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
            self.link = self.slug
        end

        logger.info "link after: #{link}"
    end

    # Override for route helper methods (link_to, user_path)
    def to_param
        slug
    end

    def score
        upvotes - downvotes
    end

end
