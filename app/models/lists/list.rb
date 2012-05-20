module Lists
  class List < ActiveRecord::Base
    belongs_to :listable, polymorphic: true
    attr_accessible :body, :position, :subject, :listable
  end
end
