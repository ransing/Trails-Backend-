class TrailCommentSerializer < ActiveModel::Serializer
  attributes :id, :details
  has_one :user
  has_one :trail
end
