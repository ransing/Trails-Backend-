class EventCommentSerializer < ActiveModel::Serializer
  attributes :id, :details, :user_name
  has_one :user
  has_one :event

  def user_name
    object.user.username
  end 
end
