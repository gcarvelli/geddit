class Post < ActiveRecord::Base

    belongs_to :user
    belongs_to :subgeddit

    before_validation(on: :create) do 
        self.slug = title.parameterize("_")
    end

    def score
        upvotes - downvotes
    end

    def pretty_link
        "/posts/#{slug}"
    end

    def age_string
        age = Time.now - created_at
        if age < 1.minutes
            "#{age.seconds} seconds"
        elsif age < 1.hours
            "#{age.minutes} minutes"
        elsif age < 1.days
            "#{age.hours} hours"
        elsif age < 1.weeks
            "#{page.days} days"
        elsif age < 1.months
            "#{age.weeks} weeks"
        elsif age < 1.years
            "#{age.months} months"
        else
            "#{age.years} years"
        end
    end

end
