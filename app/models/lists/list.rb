module Lists
  class List < ActiveRecord::Base
    has_many :list_items
    belongs_to :listable, polymorphic: true

    attr_accessible :body, :position, :subject, :listable
  end
end
