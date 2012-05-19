module Lists
  class ManagerController < ActionController::Base
    def index
      render :text => "Welcome to the Lists Manager"
    end
  end
end
