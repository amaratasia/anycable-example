class WelcomeChannel < ApplicationCable::Channel
  def subscribed
    stream_from "welcome_channel_#{current_user}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    user = if (current_user == 'amar')
              'raja'
            else 
              'amar'
            end
    ActionCable.server.broadcast("welcome_channel_#{user}", "#{current_user} sent a msg")
  end
end
