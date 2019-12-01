class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :time, :detail, :duration, :category, :user_events, :create_events, :event_users_id_array, :trail
  belongs_to :trail
end
