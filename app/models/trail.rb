class Trail < ApplicationRecord

    has_many :trail_comments
    has_many :user_trails
    has_many :events


    def trail_current_user_id
        current_user.id 
    end 

    def trail_users_id_array
        # trail = Trail.find(:id)
        trail.users.map do |x| 
            x.id 
        end 
    end 

    def if_trail_is_favorite
        contain_id = trail_users_id_array.select do |x|
            x == trail_current_user_id
        end 

        if contain_id = []
            return null
        else 
            return true 
        end 
    end 




end
