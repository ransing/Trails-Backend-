class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :time, :detail, :duration, :category, :user_events, :create_events, :event_users_id_array, :trail, :create_users_id_array, :event_trail
  belongs_to :trail

  has_many :event_comments
end
