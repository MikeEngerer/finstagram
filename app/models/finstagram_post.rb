# post class
class FinstagramPost < ActiveRecord::Base
    # creates relationships between tables in database
    belongs_to :user
    has_many :comments
    has_many :likes
    
    validates :photo_url, :user, presence: true
    validates_presence_of :user
    # gets time since post
    def humanized_time_ago
        time_ago_in_seconds = Time.now - self.created_at
        time_ago_in_minutes = time_ago_in_seconds / 60
        if time_ago_in_minutes > 60
                "#{(time_ago_in_minutes / 60).to_i} hours ago"
        else
                "#{time_ago_in_minutes.to_i} minutes ago"
        end
    end
    # gets like count
    def like_count
        self.likes.size
    end
    # gets comment count
    def comment_count
        self.comments.size
    end
    
end
