module Lists
  class ApplicationController < ActionController::Base
    before_filter :authenticate_user

    protected

    def authenticate_user
      unless Lists.access_callback.call
        raise "Authentication failed."
      end
    end
  end
end
