module Lists
  class ManagerController < ActionController::Base
    def index
      @lists = List.all
    end
  end
end
