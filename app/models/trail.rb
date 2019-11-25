class Trail < ApplicationRecord

    has_many :trail_comments
    has_many :user_trails

end
