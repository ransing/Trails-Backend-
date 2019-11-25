class EventCommentSerializer < ActiveModel::Serializer
  attributes :id, :details
  has_one :user
  has_one :event
end
