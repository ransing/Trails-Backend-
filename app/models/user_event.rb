class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event


  belongs_to :attendee, class_name: 'User', foreign_key: 'user_id'
  belongs_to :attending_event, class_name: 'Event', foreign_key: 'event_id'




end
