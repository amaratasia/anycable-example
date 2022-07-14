module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = request.params[:user]
      logger.add_tags 'ActionCable', 1
    end
  end
end
