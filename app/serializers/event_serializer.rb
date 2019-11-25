class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :time
  has_one :trail
end
