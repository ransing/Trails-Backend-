class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :summary, :difficulty, :stars, :star_votes, :location, :url, :imgSqSmall, :imgSmall, :imgSmallMed, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude, :conditionStatus, :conditionDetails, :conditionDate
end
