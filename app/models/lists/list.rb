module Lists
  class List < ActiveRecord::Base
    attr_accessible :body, :position, :subject
  end
end
