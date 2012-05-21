module Lists
  class ListItem < ActiveRecord::Base
    attr_accessible :body, :position, :subject
  end
end
