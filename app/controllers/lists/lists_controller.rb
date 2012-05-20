module Lists
  class ListsController < ActionController::Base
    respond_to :html, :json

    def new
      @list = List.new
    end

    def create
      @list = List.new(params[:list])
      @list.save
      respond_with @list
    end

    def show
      @list = List.find(params[:id])
      respond_with @list
    end
  end
end
