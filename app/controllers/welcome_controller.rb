class WelcomeController < ApplicationController
  def index
    ActionCable.server.broadcast("welcome_channel_amar", "Controller COde NBrpo")
  end
end
