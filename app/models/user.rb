class User < ApplicationRecord
    has_secure_password

    has_many :created_events, class_name: "Create_event", foreign_key: "user_id"
    has_many :users_create_events, through: :created_events, source: :event

    has_many :user_events
    has_many :events, through: :user_events, source: :attending_event

    has_many :event_comments
    has_many :trail_comments 


end
