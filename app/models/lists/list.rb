module Lists
  class List < ActiveRecord::Base
    has_many :list_items
    belongs_to :listable, polymorphic: true

    attr_accessible :body, :position, :subject, :listable, :list_items_attributes

    accepts_nested_attributes_for :list_items
  end
end
