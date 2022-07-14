class WelcomeController < ApplicationController
  def index
    ActionCable.server.broadcast("welcome_channel_#{params[:user]}", params[:data])
  end
end
