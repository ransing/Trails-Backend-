class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :time, :detail, :duration, :category, :user_events, :create_events
  belongs_to :trail
end
