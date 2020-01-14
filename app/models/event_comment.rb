class EventComment < ApplicationRecord
  belongs_to :user
  belongs_to :event


  def user_name
    self.user.username
    
  end 


  def event_for_broadcast
    {
      id: self.id, 
      details: self.details, 
      user_id: self.user.id,
      event_id: self.event.id
    }

    
  end 

end
