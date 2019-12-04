class EventCommentsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    # event = EventComment.find(params[:event_id])
    # stream_from event

    stream_from "event_comments_channel"

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    raise NotImplementedError
  end
end
