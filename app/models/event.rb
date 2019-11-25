class Event < ApplicationRecord
  belongs_to :trail

  has_many :create_events
  has_many :users, through: :create_events

  has_many :attendees 
  has_many : , through: : , source: : 
  
  
  # has_many :prescriptions
  # has_many :doctors, through: :prescriptions
  # has_many :pharmacists, through: :prescriptions, source: :doctor




  has_many :event_comments
  has_many :trail_comments

end
