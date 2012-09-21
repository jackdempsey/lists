module Lists
  class ListItemsController < ApplicationController
    respond_to :html, :json, :js

    def destroy
      @list_item = ListItem.find(params[:id])
      @list_item.destroy
      respond_with @list_item
    end
  end
end
