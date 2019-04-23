module ApplicationCable
  class Connection < ActionCable::Connection::Base
=begin
    identified_by :logged_in_user_id

    def connect
      self.logged_in_user_id = authenticate
    end

    private

    def authenticate
      if current_user = User[request.session.fetch('logged_in_user_id', nil)].try(:id)
        current_user
      else
        reject_unauthorized_connection
      end
    end
=end
  end
end
