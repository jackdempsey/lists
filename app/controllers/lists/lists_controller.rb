module Lists
  class ListsController < ActionController::Base
    respond_to :html, :json, :js

    def new
      @list = List.new
      @list.list_items.build
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

    def edit
      @list = List.find(params[:id])
      @list.list_items.build
      respond_with @list
    end

    def update
      @list = List.find(params[:id])
      @list.update_attributes(params[:list])
      respond_with @list
    end
  end
end
