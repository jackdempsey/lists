module Lists
  class ManagerController < ApplicationController
    def index
      @lists = List.all
    end
  end
end
