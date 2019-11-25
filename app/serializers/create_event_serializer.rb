class CreateEventSerializer < ActiveModel::Serializer
  attributes :id, :details
  has_one :user
  has_one :event
end
