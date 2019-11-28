class Event < ApplicationRecord
  belongs_to :trail

  has_many :create_events
  has_many :users, through: :create_events

  has_many :user_events
  has_many :attending_event , through: :user_events , source: :users 
  
  
  # has_many :prescriptions
  # has_many :doctors, through: :prescriptions
  # has_many :pharmacists, through: :prescriptions, source: :doctor




  has_many :event_comments
  has_many :trail_comments

end
