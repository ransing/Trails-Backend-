class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :difficulty, :stars, :star_votes, :location, :url, :imgSqSmall, :imgSmall, :imgSmallMed, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude, :conditionStatus, :conditionDetails, :conditionDate, :user_trails, :users, :trail_users_id_array
end
